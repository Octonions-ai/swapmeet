# SwapMeet — Product Requirements

> Synthesized from the team's "Discovered Product Requirements" board (FigJam).
> This is the product source of truth, and the context the factory build reads.

## What it is

SwapMeet is a local, trusted marketplace for buying and selling second-hand goods
within a community. It makes thrifting and selling easy from anywhere, keeps
transactions local, and uses AI to remove the tedious parts of reselling — listing,
pricing, and negotiating.

## How do we add value to the online community market?

We add value by being a **trusted platform for individuals to thrift within their
local communities**. Transactions stay local, inside a trusted community, and AI
helps with the difficult tasks — pricing and negotiating.

The gap it fills: today's options are broken. General marketplaces have no trust
(sell to anyone, no seller history, awkward shipping), and social marketplaces are
a mess for trust and profiles. SwapMeet adds a **trust-and-reputation layer** and
**removes the tedious parts of listing, pricing, and managing inventory**, so
selling lives in one place instead of six listings across six platforms. It should
also let people see the impact of reuse in real terms — shopping that feels good,
not something you have to justify.

## What features do we want?

The full ambition, grouped from the board:

**Listing & selling**
- AI-assisted listing: photo recognition, pricing suggestions, description
  drafting and posting, and product-detail recommendations.
- Buy / offer / swap.

**Pricing & negotiating**
- AI-powered pricing and negotiating: suggest a price range, adjust for condition
  and demand, and negotiate with buyers within seller-set rules.
- Bid / auction.

**Trust & payments**
- Trust & reputation: reviews, ratings, verified earnings.
- Integrated payments: escrow, payouts, refunds, condition guarantees.

**Discovery & community**
- Local discovery: map and proximity, local pickup.
- Recommendation engine / product finds.
- On-platform messaging: filters, offers, counter-offers, scheduling.
- Community: followers, social profiles, small businesses and creators.
- Transaction history, favorites, saved searches.
- Photo/video and item condition.

### MVP v0.01 — the smallest loop

The list above is the ambition. **v0.01 is the smallest slice a real buyer and
seller can complete end to end:**

- Browse listings as a card grid, filter by category
- Open a listing detail page
- Post a listing through a form (validated, persisted to `data/listings.json`)

Deferred to later versions: AI-assisted listing and pricing/negotiating, integrated
payments, bid/auction/swap, trust & reputation, recommendation engine, community.

## Who are our users/customers?

Three groups, but **MVP focuses on just the shopper/seller experience**:

- **Shoppers** — thrifters and budget-conscious, sustainability-focused,
  deal-seekers, people who need an item now.
- **Sellers** — individuals decluttering, side-hustlers, small businesses, people
  monetizing unused goods.
- **Businesses** — retail, nonprofit, and small-business inventory surplus (thrift
  stores, consignment shops, and other resellers).

Our users enjoy second-hand shopping and prioritize local/community businesses
and/or environmental and sustainability projects.

## Why do we want to build this?

To build a **local, connected resale economy** where reusing goods is the easy, fun
default choice — showcasing communities and culture, and highlighting what makes
them special and unique. It is personal: we are thrifters ourselves and want the
best place to thrift in your community, built by people who care about it.

## Will we love the product when we are done?

Yes. We'll get to see awesome communities, and we'll have a meaningful impact on the
environment and on communities.
