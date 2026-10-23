/** @type {import('next').NextConfig} */
const nextConfig = {
	experimental: {
		trustHostHeader: true,
	},
	images: {
		remotePatterns: [
			{
				protocol: "https",
				hostname: "img.clerk.com",
			},
		],
	},
};

module.exports = nextConfig;
