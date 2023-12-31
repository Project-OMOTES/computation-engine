"""first commit

Revision ID: 67695c1cef7e
Revises: 
Create Date: 2023-08-31 07:33:10.578196

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa

# revision identifiers, used by Alembic.
revision: str = '67695c1cef7e'
down_revision: Union[str, None] = None
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None

work_flow_type_enum = sa.Enum('GROWTH_OPTIMIZER', name='workflowtype')
status_enum = sa.Enum('REGISTERED', 'RUNNING', 'FINISHED', 'ERROR', 'STOPPED', name='jobstatus')


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table(
        'job',
        sa.Column('job_id', sa.UUID(), nullable=False),
        sa.Column('job_name', sa.String(), nullable=False),
        sa.Column('work_flow_type', work_flow_type_enum, nullable=False),
        sa.Column('user_name', sa.String(), nullable=True),
        sa.Column('project_name', sa.String(), nullable=True),
        sa.Column('status', status_enum, nullable=False),
        sa.Column('input_config', sa.String(), nullable=True),
        sa.Column('input_esdl', sa.String(), nullable=False),
        sa.Column('output_esdl', sa.String(), nullable=True),
        sa.Column('added_at', sa.DateTime(timezone=True), nullable=False),
        sa.Column('running_at', sa.DateTime(timezone=True), nullable=True),
        sa.Column('stopped_at', sa.DateTime(timezone=True), nullable=True),
        sa.Column('logs', sa.String(), nullable=True),
        sa.PrimaryKeyConstraint('job_id')
    )
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('job')
    # work_flow_type_enum.drop(op.get_bind(), checkfirst=False)
    # status_enum.drop(op.get_bind(), checkfirst=False)
    # ### end Alembic commands ###
