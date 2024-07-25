import type { Meta, StoryObj } from '@storybook/react';

import OkBtn from './OkBtn';

const meta = {
  component: OkBtn,
} satisfies Meta<typeof OkBtn>;

export default meta;

type Story = StoryObj<typeof meta>;

export const Default: Story = {
  args: {}
};