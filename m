Return-Path: <clang-built-linux+bncBDAJHHUPUYJBBWGG6H6AKGQECVCAL7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD002A0E39
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 20:02:49 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 62sf5581809pfv.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 12:02:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604084568; cv=pass;
        d=google.com; s=arc-20160816;
        b=AUbijiQ8AQ/hE6UdJZZJJcGhEWI47mVIu/7NvI5NDxIurI9i9C/fP+hdD8f8AajGKC
         lD0cJHKZJ/mghGSxDURBfjZSKyBdmtRsHeENMto/xUYEpuIePUDE0DWFrUySoWZTVXys
         Ondfx+Ij/taIYmvwfr8zkijgZZ0dYd35EFbs9OEipguln740VvryfxDlgVl3pqftMOji
         mgMp9qxyNAvpX2fd3TjUDuKmv27d4bcgMbr0OaCjPR5NfA6NPwolCxz4X0sKk28xS/Zl
         uQMYwAb9AIcPKxm6OdAOnI4Lg2Ec2CoXNz+Vysaf+r6da37bDtxUgNMtNcXJSJC/DvNM
         rqiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=9/16+ABvfO+Nht9+RAqX/dmVx/8TqGnDugMpO1AY33Y=;
        b=XEdUGxsCM3tuGjsnNHbuXdK9390XDpUWJzSQQWv6H3ISpec8roaha+PQYVBm7WOgXE
         1rjuAOBDNCSBTm49TXxJ5BHx+xtPuufbZJ2TETldTcUUs9AJT77Eeuotz7UuEWGNMnLb
         ijMfdnPBmrFlDmgcx/rbsvCw80ki0I/rSwNJqkiIru4HlocCKXwOSHSgDL6IU1Yzi0Sz
         Vw3FfsS7Sl+X4UBdX6K/RzvgTvaXMCzh2UgsQ/XZqhmr9j1uzqVf/80Y9V53OSzzhLqQ
         4WgzQYiWeBHoBTQ+jhoavOD8ujGUuhJRurKk2zy4+GVqFqVCUO3PXoll9H8jvNvBxC1E
         xXyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ben.widawsky@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=ben.widawsky@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9/16+ABvfO+Nht9+RAqX/dmVx/8TqGnDugMpO1AY33Y=;
        b=YBdaENOawoJKXVBjCU21eO8QuQj4jFPHUMw7d89tRE2iQS0EkF1QhNVoIHnCc+4Bhn
         TfLbCRWO0m6/0tUVtWEvpVRq02v0a95xyREFxhr0ZCZG2LkdVzMekUA5m1IQRSImVhna
         9y9d7MMiTlpQFrKPqKkluglLvZWh5JEu6NAskIPA+AIS8O2mlgFC3OBgFF4LW+E8S+9t
         U7qjiG2IQfdtAQNQekFCB1CAIZE6iQ+2PK6n2isYDQF2Y7q5bJnSEcUjhfAQlf6/aZGC
         OPWo88yI0gffBbsRpdRRq//f988vX5ClmzC0jrMyfeAc/J92u0UlJIBPKAryjQiKq0MT
         JZRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:date:message-id:in-reply-to:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9/16+ABvfO+Nht9+RAqX/dmVx/8TqGnDugMpO1AY33Y=;
        b=FkjR7TrpK7PpifttzEbyCoST8GZmCv99o7kyLzb5K7+lmWsJ6gGVRr8oowXg1AeT5p
         JwIvSrUQqhtI0C7PG91FlCv65kptBUFnz61NnWmKY05K7GqJKXh6UCJFghFKu85zgcpa
         OOHeXRbDe0cn3SS7G63/qmTof69PE/JvqB7fU7bzvFK+tFBOHwXQ7wlAd2cbNf8qERvn
         8SKJY1hjOlrE+zjhNqCBfyfNVyhw2+kuK+Psup0Z7uf419my56dtO0dtbV+iN0selojn
         LsFxManLeWbsvUDd5DabR8E5e0OBvVB4yYLU4cW9JOjhJ6oHf9u0nLcKvUNAkdiXLED+
         QqMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QpPfPKs8TPS00/db30eaZdc0OGap+jshAwYnaa0kwI2+GG/wb
	ykMiZD6eS40ciVi+0twSdnM=
X-Google-Smtp-Source: ABdhPJwy9I6HfIxQAxG2e2i6LVutZn+kmeByL0WOePLnpIyv73LeLTA1E9j7R7b0YRPSVLghgkWhQg==
X-Received: by 2002:a17:90a:4295:: with SMTP id p21mr3982533pjg.217.1604084568205;
        Fri, 30 Oct 2020 12:02:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3e45:: with SMTP id t5ls2465273pjm.2.gmail; Fri, 30
 Oct 2020 12:02:47 -0700 (PDT)
X-Received: by 2002:a17:902:c20a:b029:d6:b2d6:8006 with SMTP id 10-20020a170902c20ab02900d6b2d68006mr687751pll.31.1604084567541;
        Fri, 30 Oct 2020 12:02:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604084567; cv=none;
        d=google.com; s=arc-20160816;
        b=fsPl59gc1/uZK4HtxWCwFhw9RukoZ1sWpWFjJnkkMcN2nXylc2D9nYlZgZo2wa9DAS
         DTsrmNNV5Dgetu+EjBNv9U5SpJ4RNcTeDukNeFXYt0p6MKhvbiscf5qCoJhLB/TH2jAy
         ykG0JYex+74WzeQntFkT5Baa9gmx0cMICHU7YjX9MLYQa31RwxxJF3/pXKNTxJ1E12Il
         pWscfJErXWZhaJvNWiOQEhgIfcwJXs9V0C1CYJBRhJheyEwAZsViR5mrAcUzc4uLWbN9
         onhmMMEOUW1Qc1CNmKUHg74AmoPT6lgeprJSq9t8vf1ZOd7sA26ASVM5PcMDIS7uXE6M
         0zew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=walkjbeQ+560lNPqapmvI/TpDM4FK6MVKP11mclj8L0=;
        b=hKki2mFTt49cDtuHc8n1kCs8rSqrqN5WC5YxKv6/jhTUCGp4RKJLAJkf0JuGb47z/c
         c7A8DGIMPSitiUuV49hSvHGGn+imltHQB/zwglDgACpHjEFfNd1P5sjjIArCm7IolilM
         Fshr2eKLTrq78l9Xy6I0Cm22GOsK2StxBzvC6Qa0SUmpGc48EnNtkJtSrpAuC7ejTCbI
         ryJoAGE561R3YJv4kIVIhVWW1g6a9e7fj0ALTLpY4QQh0fkNKOL0ikVNd/5pSKYry4Xh
         21wJbS1kQR9Gq37auHwZgGi1LKjtLn1D9MeR43+8fONpm/hR5FxUMU3i8jq646RUi5Em
         XZPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ben.widawsky@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=ben.widawsky@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id x24si438867pll.5.2020.10.30.12.02.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 12:02:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ben.widawsky@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: S0nKAvRUQSbUg5+CvSa/M/dvDuitZQlqkiFtb0msAv8HzhsT7x2dtfcHPnjd4RHvgy/WJe8JWB
 /frk7L+XATXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="253359053"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; 
   d="scan'208";a="253359053"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 12:02:46 -0700
IronPort-SDR: GbRNYe2qdx5ld/FufN7RCKbNuIA2/flLKlX427Jbbos8V9aZKG9KRfzVco7y9Jad81NfWUp6OY
 y1FiUz2QJeyA==
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; 
   d="scan'208";a="537167648"
Received: from kingelix-mobl.amr.corp.intel.com (HELO bwidawsk-mobl5.local) ([10.252.139.120])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 12:02:43 -0700
From: Ben Widawsky <ben.widawsky@intel.com>
To: linux-mm <linux-mm@kvack.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>,
	Dave Hansen <dave.hansen@intel.com>,
	Michal Hocko <mhocko@kernel.org>,
	Ben Widawsky <ben.widawsky@intel.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 02/12] mm/mempolicy: convert single preferred_node to full nodemask
Date: Fri, 30 Oct 2020 12:02:28 -0700
Message-Id: <20201030190238.306764-3-ben.widawsky@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201030190238.306764-1-ben.widawsky@intel.com>
References: <20201030190238.306764-1-ben.widawsky@intel.com>
MIME-Version: 1.0
X-Original-Sender: ben.widawsky@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ben.widawsky@intel.com designates 192.55.52.43 as
 permitted sender) smtp.mailfrom=ben.widawsky@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

From: Dave Hansen <dave.hansen@linux.intel.com>

The NUMA APIs currently allow passing in a "preferred node" as a
single bit set in a nodemask.  If more than one bit it set, bits
after the first are ignored.  Internally, this is implemented as
a single integer: mempolicy->preferred_node.

This single node is generally OK for location-based NUMA where
memory being allocated will eventually be operated on by a single
CPU.  However, in systems with multiple memory types, folks want
to target a *type* of memory instead of a location.  For instance,
someone might want some high-bandwidth memory but do not care about
the CPU next to which it is allocated.  Or, they want a cheap,
high capacity allocation and want to target all NUMA nodes which
have persistent memory in volatile mode.  In both of these cases,
the application wants to target a *set* of nodes, but does not
want strict MPOL_BIND behavior as that could lead to OOM killer or
SIGSEGV.

To get that behavior, a MPOL_PREFERRED mode is desirable, but one
that honors multiple nodes to be set in the nodemask.

The first step in that direction is to be able to internally store
multiple preferred nodes, which is implemented in this patch.

This should not have any function changes and just switches the
internal representation of mempolicy->preferred_node from an
integer to a nodemask called 'mempolicy->preferred_nodes'.

This is not a pie-in-the-sky dream for an API.  This was a response to a
specific ask of more than one group at Intel.  Specifically:

1. There are existing libraries that target memory types such as
   https://github.com/memkind/memkind.  These are known to suffer
   from SIGSEGV's when memory is low on targeted memory "kinds" that
   span more than one node.  The MCDRAM on a Xeon Phi in "Cluster on
   Die" mode is an example of this.
2. Volatile-use persistent memory users want to have a memory policy
   which is targeted at either "cheap and slow" (PMEM) or "expensive and
   fast" (DRAM).  However, they do not want to experience allocation
   failures when the targeted type is unavailable.
3. Allocate-then-run.  Generally, we let the process scheduler decide
   on which physical CPU to run a task.  That location provides a
   default allocation policy, and memory availability is not generally
   considered when placing tasks.  For situations where memory is
   valuable and constrained, some users want to allocate memory first,
   *then* allocate close compute resources to the allocation.  This is
   the reverse of the normal (CPU) model.  Accelerators such as GPUs
   that operate on core-mm-managed memory are interested in this model.

v2:
Fix spelling errors in commit message. (Ben)
clang-format. (Ben)
Integrated bit from another patch. (Ben)
Update the docs to reflect the internal data structure change (Ben)
Don't advertise MPOL_PREFERRED_MANY in UAPI until we can handle it (Ben)
Added more to the commit message (Dave)

Link: https://lore.kernel.org/r/20200630212517.308045-3-ben.widawsky@intel.com
Co-developed-by: Ben Widawsky <ben.widawsky@intel.com>
Signed-off-by: Dave Hansen <dave.hansen@linux.intel.com>
Signed-off-by: Ben Widawsky <ben.widawsky@intel.com>
---
 .../admin-guide/mm/numa_memory_policy.rst     |  6 +--
 include/linux/mempolicy.h                     |  4 +-
 mm/mempolicy.c                                | 40 ++++++++++---------
 3 files changed, 27 insertions(+), 23 deletions(-)

diff --git a/Documentation/admin-guide/mm/numa_memory_policy.rst b/Documentation/admin-guide/mm/numa_memory_policy.rst
index 067a90a1499c..1ad020c459b8 100644
--- a/Documentation/admin-guide/mm/numa_memory_policy.rst
+++ b/Documentation/admin-guide/mm/numa_memory_policy.rst
@@ -205,9 +205,9 @@ MPOL_PREFERRED
 	of increasing distance from the preferred node based on
 	information provided by the platform firmware.
 
-	Internally, the Preferred policy uses a single node--the
-	preferred_node member of struct mempolicy.  When the internal
-	mode flag MPOL_F_LOCAL is set, the preferred_node is ignored
+	Internally, the Preferred policy uses a nodemask--the
+	preferred_nodes member of struct mempolicy.  When the internal
+	mode flag MPOL_F_LOCAL is set, the preferred_nodes are ignored
 	and the policy is interpreted as local allocation.  "Local"
 	allocation policy can be viewed as a Preferred policy that
 	starts at the node containing the cpu where the allocation
diff --git a/include/linux/mempolicy.h b/include/linux/mempolicy.h
index 5f1c74df264d..23ee10556b82 100644
--- a/include/linux/mempolicy.h
+++ b/include/linux/mempolicy.h
@@ -47,8 +47,8 @@ struct mempolicy {
 	unsigned short mode; 	/* See MPOL_* above */
 	unsigned short flags;	/* See set_mempolicy() MPOL_F_* above */
 	union {
-		short 		 preferred_node; /* preferred */
-		nodemask_t	 nodes;		/* interleave/bind */
+		nodemask_t preferred_nodes; /* preferred */
+		nodemask_t nodes; /* interleave/bind */
 		/* undefined for default */
 	} v;
 	union {
diff --git a/mm/mempolicy.c b/mm/mempolicy.c
index e24f0133ff1f..ba3bc4f28d27 100644
--- a/mm/mempolicy.c
+++ b/mm/mempolicy.c
@@ -205,7 +205,7 @@ static int mpol_new_preferred(struct mempolicy *pol, const nodemask_t *nodes)
 	else if (nodes_empty(*nodes))
 		return -EINVAL;			/*  no allowed nodes */
 	else
-		pol->v.preferred_node = first_node(*nodes);
+		pol->v.preferred_nodes = nodemask_of_node(first_node(*nodes));
 	return 0;
 }
 
@@ -345,22 +345,26 @@ static void mpol_rebind_preferred(struct mempolicy *pol,
 						const nodemask_t *nodes)
 {
 	nodemask_t tmp;
+	nodemask_t preferred_node;
+
+	/* MPOL_PREFERRED uses only the first node in the mask */
+	preferred_node = nodemask_of_node(first_node(*nodes));
 
 	if (pol->flags & MPOL_F_STATIC_NODES) {
 		int node = first_node(pol->w.user_nodemask);
 
 		if (node_isset(node, *nodes)) {
-			pol->v.preferred_node = node;
+			pol->v.preferred_nodes = nodemask_of_node(node);
 			pol->flags &= ~MPOL_F_LOCAL;
 		} else
 			pol->flags |= MPOL_F_LOCAL;
 	} else if (pol->flags & MPOL_F_RELATIVE_NODES) {
 		mpol_relative_nodemask(&tmp, &pol->w.user_nodemask, nodes);
-		pol->v.preferred_node = first_node(tmp);
+		pol->v.preferred_nodes = tmp;
 	} else if (!(pol->flags & MPOL_F_LOCAL)) {
-		pol->v.preferred_node = node_remap(pol->v.preferred_node,
-						   pol->w.cpuset_mems_allowed,
-						   *nodes);
+		nodes_remap(tmp, pol->v.preferred_nodes,
+			    pol->w.cpuset_mems_allowed, preferred_node);
+		pol->v.preferred_nodes = tmp;
 		pol->w.cpuset_mems_allowed = *nodes;
 	}
 }
@@ -912,7 +916,7 @@ static void get_policy_nodemask(struct mempolicy *p, nodemask_t *nodes)
 		break;
 	case MPOL_PREFERRED:
 		if (!(p->flags & MPOL_F_LOCAL))
-			node_set(p->v.preferred_node, *nodes);
+			*nodes = p->v.preferred_nodes;
 		/* else return empty node mask for local allocation */
 		break;
 	default:
@@ -1885,9 +1889,9 @@ nodemask_t *policy_nodemask(gfp_t gfp, struct mempolicy *policy)
 /* Return the node id preferred by the given mempolicy, or the given id */
 static int policy_node(gfp_t gfp, struct mempolicy *policy, int nd)
 {
-	if (policy->mode == MPOL_PREFERRED && !(policy->flags & MPOL_F_LOCAL))
-		nd = policy->v.preferred_node;
-	else {
+	if (policy->mode == MPOL_PREFERRED && !(policy->flags & MPOL_F_LOCAL)) {
+		nd = first_node(policy->v.preferred_nodes);
+	} else {
 		/*
 		 * __GFP_THISNODE shouldn't even be used with the bind policy
 		 * because we might easily break the expectation to stay on the
@@ -1932,7 +1936,7 @@ unsigned int mempolicy_slab_node(void)
 		/*
 		 * handled MPOL_F_LOCAL above
 		 */
-		return policy->v.preferred_node;
+		return first_node(policy->v.preferred_nodes);
 
 	case MPOL_INTERLEAVE:
 		return interleave_nodes(policy);
@@ -2066,7 +2070,7 @@ bool init_nodemask_of_mempolicy(nodemask_t *mask)
 		if (mempolicy->flags & MPOL_F_LOCAL)
 			nid = numa_node_id();
 		else
-			nid = mempolicy->v.preferred_node;
+			nid = first_node(mempolicy->v.preferred_nodes);
 		init_nodemask_of_node(mask, nid);
 		break;
 
@@ -2204,7 +2208,7 @@ alloc_pages_vma(gfp_t gfp, int order, struct vm_area_struct *vma,
 		 * node in its nodemask, we allocate the standard way.
 		 */
 		if (pol->mode == MPOL_PREFERRED && !(pol->flags & MPOL_F_LOCAL))
-			hpage_node = pol->v.preferred_node;
+			hpage_node = first_node(pol->v.preferred_nodes);
 
 		nmask = policy_nodemask(gfp, pol);
 		if (!nmask || node_isset(hpage_node, *nmask)) {
@@ -2343,7 +2347,7 @@ bool __mpol_equal(struct mempolicy *a, struct mempolicy *b)
 		/* a's ->flags is the same as b's */
 		if (a->flags & MPOL_F_LOCAL)
 			return true;
-		return a->v.preferred_node == b->v.preferred_node;
+		return nodes_equal(a->v.preferred_nodes, b->v.preferred_nodes);
 	default:
 		BUG();
 		return false;
@@ -2487,7 +2491,7 @@ int mpol_misplaced(struct page *page, struct vm_area_struct *vma, unsigned long
 		if (pol->flags & MPOL_F_LOCAL)
 			polnid = numa_node_id();
 		else
-			polnid = pol->v.preferred_node;
+			polnid = first_node(pol->v.preferred_nodes);
 		break;
 
 	case MPOL_BIND:
@@ -2804,7 +2808,7 @@ void __init numa_policy_init(void)
 			.refcnt = ATOMIC_INIT(1),
 			.mode = MPOL_PREFERRED,
 			.flags = MPOL_F_MOF | MPOL_F_MORON,
-			.v = { .preferred_node = nid, },
+			.v = { .preferred_nodes = nodemask_of_node(nid), },
 		};
 	}
 
@@ -2970,7 +2974,7 @@ int mpol_parse_str(char *str, struct mempolicy **mpol)
 	if (mode != MPOL_PREFERRED)
 		new->v.nodes = nodes;
 	else if (nodelist)
-		new->v.preferred_node = first_node(nodes);
+		new->v.preferred_nodes = nodemask_of_node(first_node(nodes));
 	else
 		new->flags |= MPOL_F_LOCAL;
 
@@ -3023,7 +3027,7 @@ void mpol_to_str(char *buffer, int maxlen, struct mempolicy *pol)
 		if (flags & MPOL_F_LOCAL)
 			mode = MPOL_LOCAL;
 		else
-			node_set(pol->v.preferred_node, nodes);
+			nodes_or(nodes, nodes, pol->v.preferred_nodes);
 		break;
 	case MPOL_BIND:
 	case MPOL_INTERLEAVE:
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201030190238.306764-3-ben.widawsky%40intel.com.
