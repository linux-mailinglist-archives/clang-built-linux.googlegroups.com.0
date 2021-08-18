Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX5L6KEAMGQECGR2BJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 954A73EF9C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:08:48 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id r13-20020ac85c8d0000b029028efef0404csf355908qta.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:08:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629263327; cv=pass;
        d=google.com; s=arc-20160816;
        b=fIpzjvfP6NVt2lbuIsCP3KfRFl0YVkkBz/vpUZT8O7mL6rJWQuBsb+PECQ+mskoBuj
         Lb9cV81q2E617G4NtX1NFKPfu9vBgsCyUU0B/cBlOaCkku/45rLXIIKbBHF4Vwh4MocZ
         4eGtxenigXCE00gqAONN7YfYRhUrs5Xa8vh07Q1wKA2t6q1slhPz79Bhx2/RilSQ9rs5
         Ku+K+xNNXqFyyOb9s1R8aQwFbcZ3ZP4FHw5mSkOJddC+jhRH6pMVs5v6zgeo62MQl7Ac
         mVkShEsVN+d79ap2Elw9sLW8BJ/x2kSSMQ0r7iPnJ+/B9vxqCm7+cRErekMGG+kbz+NB
         tV1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ioOupskV8e4LYg8blUrNIa6GfZhF1Qu1WcDWxItp044=;
        b=EgR/eox/mJB9XkNKWHQf9nYVHOoOL9y5XV+iPPSqPEkkHDgtSCkP8oA7Nac8dV4kcX
         otdJEiENnoXniVBYXCA3TaHBYv2fIaoNvEDM+TxtlnXdtz4HtT4jRbybzKN+cXR5K+mu
         3tI86Yl4CY9s8GqiGR1nN645CZfuS89Qy5gPLN7azWS9YdgxtoUywf4m63eCjBgeSHS8
         iMJ0d6DLxulxQHcHuxo/EqHS27P/8COyK57CKvsjRWrgeLLY3QG2YoxW6hHc1IkI2DMl
         oo2jVyi9RrVQlsvzhZfsAvG0jV2Nw96j/dd51ZaW2zMZ0tkoaXCOYM2xxGvmZEolMrFN
         6GvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=m1B7uYDM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ioOupskV8e4LYg8blUrNIa6GfZhF1Qu1WcDWxItp044=;
        b=D35v3q7UQavPuYcvuGmUzfvzfkqa0J7GphYl/8kvV9TkQSIoDhlBOP9qeaRfAvpL3z
         IwZ7JILRgt7vqFRgR8LgJ2yXAlxlppJ2iGDuMNF778tBMLCKuWsPlxyH2T+F7UL1dFQb
         FdSZzr1b8YKQ4nn1dtmnjM2yuiOIvvY9O6hpRDDMWF9MYzNQbXj+6f/RmZ0nh7RESUvz
         sN5v1Fv1I7renfHjkqXINuq/GFzMjOKtmiBatB8QcOMdxUrI2hI+C+LI4tUxiOX50Zt+
         CoN+4fUZd3ys3XIWyF/5GbW2d3chb0KQMV2YjLbFxhtkcXYtxrNlsTO0OVgum4WZ6eIZ
         aMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ioOupskV8e4LYg8blUrNIa6GfZhF1Qu1WcDWxItp044=;
        b=kaQn9fX26VgQLruy9h+6VOIFsAHIi+C6o1jVX/FyBeKnGXWDMQq3FCIeEalV950x9w
         qPhkZ7Gdq3qVXRbCQmmOy69i/UqPowkOAoRFOE30j6iXztwXAdg7b19IHUBJQntxSeWs
         L6zWlAHnDOTT8TR20+T1cYQ9oPLeWKFORTY5MLJ/YItJNON6ctGU5sGu5diEvhT2BQPT
         cMWgghNzIi75f00RgtAnKzIYG1N3pCDZ5Hkj5ooOFRu7p7uoR+LakFkys4MNBoGVIk9X
         MHsvZ6ZqW2pC7dWuf0JXWxmwAif6yGDHZG2DN5IR8jWV+0YDKbkDvaDSj1aL8THyJKyu
         WYdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nCkdqCCqtHstHh+QQ4U2p35myqEVzjJ9TnO0+4dqDiY2xtGWP
	tbNfCBVcS1nn9ZS9s684eyM=
X-Google-Smtp-Source: ABdhPJylcN0rvauEtHKjaWby8z/HGdn4SQKvI4KOivOVpkaIymmQoVRCsgyWV7r6/JdUhPTLfWYuWA==
X-Received: by 2002:a05:620a:ce1:: with SMTP id c1mr7767915qkj.471.1629263327497;
        Tue, 17 Aug 2021 22:08:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:153:: with SMTP id f19ls477017qtg.5.gmail; Tue, 17 Aug
 2021 22:08:47 -0700 (PDT)
X-Received: by 2002:ac8:7eea:: with SMTP id r10mr6337543qtc.286.1629263327073;
        Tue, 17 Aug 2021 22:08:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629263327; cv=none;
        d=google.com; s=arc-20160816;
        b=n9/oteoBRog/cI7c/Y+/PcATm5W0EVU8iY11ULdro1LyD+H0n8yCduJLKU6hKF02qm
         Gqv7NxeR1m76TfqMNKV0BXZ5FbbjET9bdGznMoG64sgnTp18vtHQS3Ov25SpmXQtiF3E
         hOxNaSI3nWrV2kocncXGb0njO+DOUbPtcxaVvel3SyZIET1d5uNLfyi3dP5OGVdpPi51
         X/ParnMJ/oOPVS/0eQ9gejdKZbdL1WQJ4AqLcjecCvdI5+Jj9xhNtrL12fIR6x41i90Z
         6Wf4D7egxbCBSCPIwsto4LL4XXrt+x8BKnVZ/27Wr/lj42E6L2DN4NFS0Q+vTvdUfZU2
         RHJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FK2fIWn19YrP32oTsI8kiLBJYwRvpS1FTekYTCayugc=;
        b=Xud15kUiWyoQyQgYjOHXYIKCL2fdibVrIU0EYGvU/LrTWMqwODSbcy/spd7c4gsCFi
         /wGiDgsJCYT0k2B9wn7nInZV6jTdviyNbjJ44EVrZo24n/E6r+rwCVjCjKwM/FVg6VRg
         K5IsysrpVisIBtWzYBprBgzwx0zy+S4CVlDhQ8oAwz271XLbzqcaMHSv6TbfTG4f6SmN
         hsC3q7JXFqQ6g1OtuliZ5HH3l7K87ntMT9wfJWNtgnOAGBt0GRp1TkI77OQD0LJhm0LY
         GcknpKsAfJklwBqqKHHpSGYIdApjJKVgssiH9t06Yn3Yh3ixyxcSnSGSuY+GBohKiVmT
         g2Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=m1B7uYDM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id s29si221960qtc.5.2021.08.17.22.08.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:08:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id e19so1041969pla.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 22:08:47 -0700 (PDT)
X-Received: by 2002:a17:90b:3718:: with SMTP id mg24mr7652580pjb.158.1629263326717;
        Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r13sm5247632pgl.90.2021.08.17.22.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH 5/5] mm/vmalloc: Add __alloc_size attributes for better bounds checking
Date: Tue, 17 Aug 2021 22:08:41 -0700
Message-Id: <20210818050841.2226600-6-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818050841.2226600-1-keescook@chromium.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2480; h=from:subject; bh=5f6ICgvlEcDnZ5CvExQnS354eTx1Re0AZwmMZI84A5o=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHJXYNOcKk3pb/hdH0pQG61sgMsvM2uPEmpliSWFO auEpIquJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyV2AAKCRCJcvTf3G3AJpBhD/ 94RVCDqdDBUbvyrRsg2UwLDN/C/AanhfxGGXoFQZ/Db9AFoP/OQgdhSrh3zfuYH5gL2IfgXtNFQUjH RC+mh0rpeaoG103VtZkh7CxQ6hpcp5Nh4ZgINyIyqdA/3FbngtFC4/JVpleRFrTfqJMKmH5chVM4gC oiBvWIl48k3ExCNccwHsIB4LkhzM2+lLljU2Db9VlLYkcyHK+R47iclOlGK59zI0eNMCV3witO4xYe 9W4bUHcJwGCjCj8ERqtUHGmAG/v6/68E8ga3l/k0SFgC0bbSNbK74t3U0f9SzxDwqV/j8icex3NlKS HzoS6dqNNzf7ANraAm7X0yMYh9OmqdZ6s29xHnSx0P0RGXH2xeB94kciWFVkM6ekX5JSgGfYbheoPC 0GvTs1Q5lar5b+TvABSBB3kdmUJSBW0/puxXf6vFXqOGqGJWCRN4aKkWIJo9Adiq1XfwBPkkbQmyFW Kg+zOhC9BNCApxIfqz/sQ+1BRDF4dqsrohVBpzRlRj6m/67Sg66cTNe2rrItoD1qssJZ8WaadlWbxu qljdjB59uZtvtjlATr5GsPXup7shDyk8B8iNPX2p1w4/6wTeNOHlyy08jWPuXVA0vvTcRc6aZ24e8h XnhJNM1zn93N07XxrnL1mpUka9jN86XbzikHemhZiZP+GZKVZMqYdvssGqxA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=m1B7uYDM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

As already done in GrapheneOS, add the __alloc_size attribute for
appropriate vmalloc allocator interfaces, to provide additional hinting
for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
compiler optimizations.

Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/vmalloc.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 2644425b6dce..f4ede07e1dae 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -136,21 +136,21 @@ static inline void vmalloc_init(void)
 static inline unsigned long vmalloc_nr_pages(void) { return 0; }
 #endif
 
-extern void *vmalloc(unsigned long size);
-extern void *vzalloc(unsigned long size);
-extern void *vmalloc_user(unsigned long size);
-extern void *vmalloc_node(unsigned long size, int node);
-extern void *vzalloc_node(unsigned long size, int node);
-extern void *vmalloc_32(unsigned long size);
-extern void *vmalloc_32_user(unsigned long size);
-extern void *__vmalloc(unsigned long size, gfp_t gfp_mask);
+extern void *vmalloc(unsigned long size) __alloc_size(1);
+extern void *vzalloc(unsigned long size) __alloc_size(1);
+extern void *vmalloc_user(unsigned long size) __alloc_size(1);
+extern void *vmalloc_node(unsigned long size, int node) __alloc_size(1);
+extern void *vzalloc_node(unsigned long size, int node) __alloc_size(1);
+extern void *vmalloc_32(unsigned long size) __alloc_size(1);
+extern void *vmalloc_32_user(unsigned long size) __alloc_size(1);
+extern void *__vmalloc(unsigned long size, gfp_t gfp_mask) __alloc_size(1);
 extern void *__vmalloc_node_range(unsigned long size, unsigned long align,
 			unsigned long start, unsigned long end, gfp_t gfp_mask,
 			pgprot_t prot, unsigned long vm_flags, int node,
-			const void *caller);
+			const void *caller) __alloc_size(1);
 void *__vmalloc_node(unsigned long size, unsigned long align, gfp_t gfp_mask,
-		int node, const void *caller);
-void *vmalloc_no_huge(unsigned long size);
+		int node, const void *caller) __alloc_size(1);
+void *vmalloc_no_huge(unsigned long size) __alloc_size(1);
 
 extern void vfree(const void *addr);
 extern void vfree_atomic(const void *addr);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818050841.2226600-6-keescook%40chromium.org.
