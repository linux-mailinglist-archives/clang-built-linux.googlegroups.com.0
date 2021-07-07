Return-Path: <clang-built-linux+bncBDV47E4WQMNBBEWOS6DQMGQEF3XLIBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF543BED3D
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 19:40:38 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id x84-20020a2531570000b029055d47682463sf1876172ybx.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 10:40:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625679635; cv=pass;
        d=google.com; s=arc-20160816;
        b=uANv2bpFwLfmJ233BTqWEysmluwQiBMBybT0tFEc9GfnDIQ5Go97aUYNcmULPECE26
         zovgG3t9YW9JwqCztoZDRSHjNnb5BgxlroDJFXl2uPgqdGoHgOaYoKKKxgeMpZZrKTBg
         /OrbES5zJ1XoRs2bgmj0pRVQG4q62BCfTZeJnamZL4F1/9QU93K1lTjX0EAMrzh+Yv3D
         Ae5vycxG1CV0tZdE4uuCaj3lvqPm92f+Y6jJCt/C3fTQumFvv7mrwZbsBL3jutN4rQl0
         QmL7cdsgsnDcQ3BibeinvOpPkUc37kfqAZvQibJnpJFMlVPzGedjm6og2yOFcEYsLwus
         SfLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=szms5hKCXVaUe98IvgZ0XPhr/8b3xbjEFXwP2P2Mcp4=;
        b=UjbVjSb0yxi24s8sSVERLvmbnfS0rWZRdMewMdgM+Ow4ZZGtGgttUF0c84QoAIlt1B
         Sb/AkQeZRYQAA9OTAxOvHyU2zqPc4p9U/+xwhDcneZiuADCIulyhlFdvn+ITcXr/g0ur
         9sp7/KrW/MC2qGXcskHirdoxtP5pRjbxuTDidmyKbVYugIeW5y9J6M+gfG5nnz/9HzuV
         G3OCrswiNa+jth5v/WduhHqj/A7cpTlLkDYo69oeDjuYzSxsTi34SFmB5df5QMMv+9rc
         bMrc9d9QdqsPQdok7Gfb8ZYeDsfGw7UJ/kT51hJb+mN+BgxQLCA7oUzIuS3XsnoKaz+R
         4Oww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bR47LD94;
       spf=pass (google.com: domain of royujjal@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=royujjal@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=szms5hKCXVaUe98IvgZ0XPhr/8b3xbjEFXwP2P2Mcp4=;
        b=E2noWsu4s6o9QuD3P2jGQhWgHkfw1Y0gLeqHy/Hfru9or2b+Xe15TrbSU675Gz3SV7
         h89TYO/LNcbxxzyXDWvOZah/K6BY3PQfk9lu8P7E2X/I1rxEqjYMitnQV1MIbE2RPuwN
         KEkJTqDs5Th5QdcElcQidaBOH0gIZ2qwZY6pIPaGqurkFZ8DbwPDVm2B8kRb2I4EA/Sw
         aSz/F+f2xv64rXx58O0ne+IQGW9V3hjky4rSp8Q68Lcppyihw8Y8sVh4RkjnIzxDbVTN
         I+aSCJShElnR3wRLXW85+nLAZKYy3bW1+7H6MDcaqBITStxsbN8iF4TAz1Y9gYRO9c4g
         Q6xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=szms5hKCXVaUe98IvgZ0XPhr/8b3xbjEFXwP2P2Mcp4=;
        b=hWt2++RhKtD13vnywkJy6m6LSqkU9CE4UrJciZKx0WM8J0fxMhaj07uX2JXcHt5W2V
         tNW1HPLwCSlx7tJ2FWBUrzoKl/v94+jRi4CNwxriVPdQ6VXhL1poIMAlTGt7xaR2p1Qa
         vRmAgZElokeTK7KIqNGWXfQXRZoEJDSlpsMkdEflQIHpVMpT9iDTrP+sXTe3mbrztQ5E
         nSgdXRhjx8lk0caOFHeeLzl9Y7mMUEdiuTrBW860xJZ7RX0iseu9QBkbdDc+QWb+FSyE
         ulHUVxZO0eZ5Vfw0u/XnTY68/lVwugTUVHQRL7/iU31p6OwihkC+Y1S5SGT6abyTx5Zq
         N+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=szms5hKCXVaUe98IvgZ0XPhr/8b3xbjEFXwP2P2Mcp4=;
        b=nYoVRF8aO4rpXpgu1uGbHLBj8pi666ClNfUFJMfj7EE5hlAKQjfR9d7qqq++SYW5E0
         NVgCwZ9eCIflVW2ARN9Rp5z4Sw7IrpdDsTfKAabmxtivwVztAaME5heU2/np8BIeIzZZ
         rqNiZX88lSPbv1m9IgQeGh812eVc1S9bigiadK+k1/ZW0xv4roaEbuMp+bu7kKyckUnL
         D6vEYYOx5yZNykHHCtxcefG5VqKmmmWyBhrqFGPmYiP7SvWJDqwvFOHcIouBWwop07oO
         lpE3xPDBZG/b60KpvpELMPloXCQLxRltUZsVoKFNrWGJfccirjSXgCD7ZBvbnCrcxoOJ
         Fi/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YhB5ctkMO8TadFchTfPCM5VMCncGLJyVWswzCXC87B2N6tAxh
	5hcJIosso3frWNp7uN+xizI=
X-Google-Smtp-Source: ABdhPJzRKzzazygn0SWfLEeI/m6ZdYJDi95y4F0j6Vdm+FMXaim4vfjTQIjEs3ROYXGw/pppQSFSzg==
X-Received: by 2002:a25:ea53:: with SMTP id o19mr32971945ybe.2.1625679634831;
        Wed, 07 Jul 2021 10:40:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4053:: with SMTP id n80ls7626008yba.11.gmail; Wed, 07
 Jul 2021 10:40:34 -0700 (PDT)
X-Received: by 2002:a25:ba10:: with SMTP id t16mr32690390ybg.87.1625679634398;
        Wed, 07 Jul 2021 10:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625679634; cv=none;
        d=google.com; s=arc-20160816;
        b=xlfqtS7fdTU5RDFOX3zLHPLWajNSMy8KQXPP8di8XTWEDbNDbKMqHNpYvlYUNCr/j+
         w7kp8cfondsDYu1dRPM9bYntPXUmCJ+XBJIH45MjgG/XGRov3jwNWRvo3m2+/19HQu76
         4xo4onEbZ5w9QZ7wbJaAmRr/q2amRoQsR1dFG/bzVfgrz4eXuXpkfvM2j9f0sQhmFVn2
         FOmhmXmsnBXrcs+2/d0/5AyCcY7xzwm6lWg9JME5QYwAzWSpA2WyaN81fYNIh4mH9sOP
         3rXjtGUixMWO1gv2p6YZwOirxkYzSPkIut+lxXzW2Ke5d3JwON+ba7y5rtmtxAtoosWP
         vf5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BgQbhoVbzjmNN3b9sj7N5Nl4gKvJ3MMVqvNXk5zHkNo=;
        b=wBmbwnaIR8AuxPmv+tbQV4oHs1KYBFGQ1haUn9Ldw2/vZEpIcx9VDlR8z98Mq0fCR9
         Drrc/L1K+dreFx5sRgwxQE7PMtJT+fURWLOImaPv/fwJ/U5e19DbYLaCbgul8pyLqKk5
         YffcOIfTDBrf641JnMLl1A2ojW5AMhkkzT7KdX3RatR61FygeSATGE+n5pElAHIX8PC3
         hEj1mAL0pmQ+sGpbG/ijOX7+x8Zjq9k3VElXFF/FWX4CoImBWUVRogjUZlQafYSDPyvP
         oT9/29oWbeiQn7ddQjvRR8FgRtKhx8jR/CM8wigj/g1Guxcgnr+CyGcNp1KnEkNxGz97
         Advw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bR47LD94;
       spf=pass (google.com: domain of royujjal@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=royujjal@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id c13si2681009ybr.5.2021.07.07.10.40.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 10:40:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of royujjal@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id b5-20020a17090a9905b029016fc06f6c5bso2113995pjp.5
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 10:40:34 -0700 (PDT)
X-Received: by 2002:a17:90a:948b:: with SMTP id s11mr28015165pjo.139.1625679633694;
        Wed, 07 Jul 2021 10:40:33 -0700 (PDT)
Received: from BALT-UROY.maxlinear.com ([202.8.116.91])
        by smtp.gmail.com with ESMTPSA id r26sm15555376pfq.191.2021.07.07.10.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jul 2021 10:40:33 -0700 (PDT)
From: UjjaL Roy <royujjal@gmail.com>
To: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] docs: bpf: Added more extension example
Date: Wed,  7 Jul 2021 23:10:22 +0530
Message-Id: <20210707174022.517-1-royujjal@gmail.com>
X-Mailer: git-send-email 2.31.1.windows.1
MIME-Version: 1.0
X-Original-Sender: royujjal@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bR47LD94;       spf=pass
 (google.com: domain of royujjal@gmail.com designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=royujjal@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: "Roy, UjjaL" <royujjal@gmail.com>

After reading this document observed that for new users it is
hard to find an example of "extension" easily.

So, added a new heading for extensions for better readability.
Now, the new readers can easily identify "extension" examples.
Also, added one more example of filtering interface index.

Signed-off-by: Roy, UjjaL <royujjal@gmail.com>
---
 Documentation/networking/filter.rst | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/Documentation/networking/filter.rst b/Documentation/networking/filter.rst
index 3e2221f4abe4..5f13905b12e0 100644
--- a/Documentation/networking/filter.rst
+++ b/Documentation/networking/filter.rst
@@ -320,13 +320,6 @@ Examples for low-level BPF:
   ret #-1
   drop: ret #0
 
-**(Accelerated) VLAN w/ id 10**::
-
-  ld vlan_tci
-  jneq #10, drop
-  ret #-1
-  drop: ret #0
-
 **icmp random packet sampling, 1 in 4**::
 
   ldh [12]
@@ -358,6 +351,22 @@ Examples for low-level BPF:
   bad: ret #0             /* SECCOMP_RET_KILL_THREAD */
   good: ret #0x7fff0000   /* SECCOMP_RET_ALLOW */
 
+Examples for low-level BPF extension:
+
+**Packet for interface index 13**::
+
+  ld ifidx
+  jneq #13, drop
+  ret #-1
+  drop: ret #0
+
+**(Accelerated) VLAN w/ id 10**::
+
+  ld vlan_tci
+  jneq #10, drop
+  ret #-1
+  drop: ret #0
+
 The above example code can be placed into a file (here called "foo"), and
 then be passed to the bpf_asm tool for generating opcodes, output that xt_bpf
 and cls_bpf understands and can directly be loaded with. Example with above
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210707174022.517-1-royujjal%40gmail.com.
