Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQGG6KEAMGQEYWK2RWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B25C3EFA92
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:54 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id c2-20020a63d5020000b029023ae853b72csf808561pgg.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266753; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3hLL7WfN8CbyvbERF1HwWHbHUw9+ab89QQaKWsRzoHjMLK7GK4oZEvBqJfoHMEmtm
         F2L35/+tg7fTMwegNDKdELT9oaZ+RHJtSD+31XVo22EiKpmTP2bbHofMmkT19e/Gj7kk
         fMtkW5sROnVwDPwbZZGP17c4XylAUHb2VJ1XHaIoIuoFIcJBGEhA5KomzBPY35rQaotE
         UH5FgtfIeba/3+SdGDo/ZfK6wQFgKNc2GGPDT2CneIKBQrmbaWW3PJCiJJyflpSYXlwy
         1lZISuRN+WUHhyqkVGB7ae8K3FFdBGxKdJrA5U2n90B64VfYAWxdFqfrx7i9WqzCWq2r
         /TXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=n5SZy3PIXfBVMlMgux4uFn3V3pc75QOl5iF6nehNGp0=;
        b=xl36qp7yYRuJF+z5ui+JBCtzQqompsyUCcgHCBFO0hce2Mp0cNxSqAG4F3hId0gGiu
         oMroFihYhoW41AAmiQfGYpbmfwcTvyMkupEk046Bt5rxSHHjLCRm5yd9oUB5yDPT+R5D
         O+93kOXDBh4xAqCBkkGfieng+62t+S4Scgm/W+3TrndIFDaIvJI87KN2szZf0xsYlzBc
         jk1gHzGGRJEXxSbTnd0bwKfWDjE7iLIiLgC28kcSGdNLfRUvtYcO5GfeeXycnd0zmPPx
         MmuW4x0Aw0uUnbfV85ENNwfobLiuxGqrGhHMG06QwQeZ0HNjY9rW3hBZcGNXakij7MO9
         itrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=J2NWNl9O;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n5SZy3PIXfBVMlMgux4uFn3V3pc75QOl5iF6nehNGp0=;
        b=KbMY1jo6cAHcisXAWQdjqgTPHKxGKrCYrUq6YXEFgwd39Zl8gVVEp95TPRDvOlrRFY
         vjP8TAsYXydeZxff0nDNddyC3yNPdpHzDPHuwRMgOVGgbKauMle6qWRVDGzLm6YkoaHM
         tAI04ncBWH38Ethyt6+n5nxpEaZf/aEWjzK1Q/JLTgZG3Dc9tCAqgkxyySjJmEuZ+bid
         j0NH6YqZLjQWFzlAS4YzPvwvJSISWPTnwnPpeDFB/pqD3moUytu9w5BrcfowlJhEKR2B
         NPmp6R3bjCEd6MK5C4yRHobO9B/7yZ9MI6QA3BQJv86RVmTpEqUihp0VWcWQM6DIcRAQ
         7hUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n5SZy3PIXfBVMlMgux4uFn3V3pc75QOl5iF6nehNGp0=;
        b=Mxzu70Mu9Auecd9J0EmrIwltFKH/0eaXUmui5Abd4OAzLYw7xMm7WQVonVUsc4xQ9c
         yTATShx45I1T/2FZLfJESdjTH9RppbbiPuDjCQvNzaVSf1eCJUUyHt9DWS3PpXMtufFY
         2jYDFXWDbBJenKpbrjnr6tCKKm1vI4hF0l1A1DQgJhQsQsOqD/G5WgsdxkD8BGHjly+U
         I8C0NfiMWODWlKNAMM/BZzrrtAHcRcAMDd4/lMUiq1VupCXBGrnJHiwKUw3MCz6ZtOC2
         P29JCRsBbDn10nbnt+CPiNxQ5kiUPayZMbNv1HhnnpgTmi8GLpn2a7oCLaQ2w7o4y1hu
         lEHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xDqK3BlxrzoySjjcfY5AvcKNBtpL93POzqi5dU92BaOLIf7+a
	Vi4KN0jPz4p8mIVJFWftTQg=
X-Google-Smtp-Source: ABdhPJw97RlENLOgenJsKZ1mIF1XOZniuopcI6A/kcMyexr5S4MJxiN3ZLKhHFS2CscIr8WYbmoXxw==
X-Received: by 2002:a17:90b:1102:: with SMTP id gi2mr7599092pjb.43.1629266753084;
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c3cc:: with SMTP id j12ls659910plj.5.gmail; Tue, 17
 Aug 2021 23:05:52 -0700 (PDT)
X-Received: by 2002:a17:90b:4b08:: with SMTP id lx8mr7608765pjb.221.1629266752539;
        Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266752; cv=none;
        d=google.com; s=arc-20160816;
        b=puk5IlB9Sx56GC8nNYLA0KaUpIL8keC17JVKGBs4+kQ7/ciNE70Yeufy394d4Og5ls
         oryUDiku4mKaQ3cHXU7IhTuA6upAl3E0UZEmlxI4nKBMIVvze+misF0wMrBMuUybKDHF
         EOuS1bpagRspEYQDAf4tPAKrdpt5FVzmt6nbnCOyw+n5ZJ+dW0p0csSjkBM1WhYG2Ded
         t+wdbDqRJ2QMN5PAXImHVEfDwUJqs98q/MAGFPE7ihBgBZwrU3Bo2g+z+ol2eRdcmjxg
         tMFKw5nyhLiZ4lMvTPyWBlMEsgE2TBGpzmbDRP4B6rPsZgtzwZBp6Y9u7ihzuRG/R6+A
         4xsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QsA0oh7yAOymBHHrtGuA27rl3B+Rg4NMTCmamVBdTcg=;
        b=W5NLQWryusVO9x0LdzzL+4oH+9V6PE6zrwPt8HUH1JveNv3fdCrW93GWK6Ngi/Z1ls
         JDT+2g9riKJPWPDixNTeqvfHZ091zhgBj3XYX5REXg/PJTyvk2plWLYnKv28WA0v54WK
         nJiF38jnNzjFRcJgxTOf3YsLv1jRkMm1MbdkMezx7FiFPMaytZqy+DhnnNLRu5z3eCkm
         KVroLG/eZNQLctTe+gyzh4FY9rRxQFWV4LXwngaKjmOdFPGZ/uHL7xJKw/poEbCQSj36
         p0o0rrI3STW8yQnL/8zbA1y5clP8g5IG+qFV5+9u5MmeJ6imkzHqm44iWsPai+OntTCI
         lY+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=J2NWNl9O;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id q2si211715pfl.0.2021.08.17.23.05.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id n13-20020a17090a4e0d00b0017946980d8dso8166040pjh.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
X-Received: by 2002:a17:90b:4b4d:: with SMTP id mi13mr8044460pjb.20.1629266752195;
        Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 8sm4700350pfo.153.2021.08.17.23.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:51 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 00/63] Introduce strict memcpy() bounds checking
Date: Tue, 17 Aug 2021 23:04:30 -0700
Message-Id: <20210818060533.3569517-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=15909; h=from:subject; bh=pJy+CM1ieoc+cSFa9SKg1KCyk8UvV7a/sKoDllusz8M=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMdEttpUtFX03U0A4V8aSiJpGXcJskHNASqB07k ZHcSazeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHQAKCRCJcvTf3G3AJsW2D/ 9PDmDCmPBXsfs6FtL//+hL+/y/SsuC3uRKM7L+3mWeTW726bHJ/2hmQA/m1WwZYjsoanUfAHLtpm/I 9wRe9+m31tYyyzMxSgHc8vjXCXe9lbrOQQ5awfflR2TpvCwnF75bXcJmeoDKECH2c5f+bnkfpoIdZx BMgmWD67rXJd49vLhG8uoTrM9ubXXrjBaELYALZ2fL6oNTe6+18qT82Pis2Qk4OUJoO7eF1o1xJwr/ szG1wX/7vWlPlcmY+WgtzZPf8mS+Q/1iPkC17WcGiKi4Hnf5R0waCedmfpbsqr73B4ijg3DC/gRevQ kFWp3i9MOM+Colz7jky21hfS8c9fXWCBySxK+gAHoCT+YKrB8EvUpv+HKj5y2YcuZUJBl0AxCwZowB PWEewnTuMisH+tA2zTty+LNwlm/kOodrvyH5/VYCT9tNwcHl0eXmL7LwDqodqq9y7eB7du/nqeTn0V 1FDI08WpjYL7MPkKQBM/oMsMv7nCRuiIClREX10rXrj73zjoHwV9QwUV70UZCH+TWGurYfxv8M/Tda LY5/b1iFGMVtG7e+KH1cr4YxAG3pvHhAQtGcqSqEEci84yakB7Bc+nxBhaX2KEB2owp02ZI53piSga 61EvJOFWnJN45wbgUl6FzqUT5SGi3AMRyPFxrOYYrKgsw/fU85rXKL0rxWrw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=J2NWNl9O;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

This patch series (based on next-20210816) implements stricter (no struct
member overflows) bounds checking for memcpy(), memmove(), and memset()
under CONFIG_FORTIFY_SOURCE. To quote a later patch in the series:

    tl;dr: In order to eliminate a large class of common buffer overflow
    flaws that continue to persist in the kernel, have memcpy() (under
    CONFIG_FORTIFY_SOURCE) perform bounds checking of the destination struct
    member when they have a known size. This would have caught all of the
    memcpy()-related buffer write overflow flaws identified in at least the
    last three years.

As this series introduces various helpers and performs several phases of
treewide cleanups, I'm expecting to carry this series in my tree, so I'd
love to get some Reviews and Acks. Given the size, I've mostly aimed this
series at various mailing lists, otherwise the CC size got really big. :)

I have separated a few things off of this submission, as things continue
to grow:
- run-time bounds checking (which now has a better solution for unknown
			    bounds besides "oh well")
- __alloc_size enablement (sent separately[1])
- -Warray-bounds enablement (several cleanups have been sent)

The remaining portions (here) haven't seen as much change, so I think
it's better to get these compile-time portions landed first -- they're
big enough. My intention is to put this in -next soon via my "overflow"
tree, assuming people are happy with it. :)

Another random thing of note, I'm using the "Enhanced-by:" tag to mean
"this was improved by...", inspired by the existing "Fixed-by:" tag (for
"folded fixes"). "Fixed-by:" seemed inaccurate (it wasn't broken; it is
just better now), and "Suggested-by:" seemed too nebulous (what was
suggested?).

Thanks!

-Kees

[1] https://lore.kernel.org/lkml/20210818050841.2226600-1-keescook@chromium.org/

v2:
- fix CC_IS_CLANG typo (nathan)
- bug.h hunk moved later (ndesaulnier)
- various commit log typos (ndesaulnier)
- omap3isp: fix read source (gustavo)
- struct_group can be variadic (rasmus)
- add struct_group_tagged (dan williams)
- move raw __struct_group() to UAPI (gregkh, dan vetter)
- ibmvscsi: add BUILD_BUG_ON() size checks
- net: use memset_after() instead of struct_group() (jakob)
- swap some memset_after() to memset_startat() for readability
- add missing __NO_FORTIFY to arm boot stub (lkp)
- powerpc signal32 struct_group() added (lkp)
- powerpc sata_fsl struct_group() added
- add fortify failure condition arguments to warning funcs to assist debugging
- add ray_cs compile-time fix
- add flexcan compile-time fix
- add af_iucv compile-time fix
- fix dropped strcpy() compile-time write overflow check
- add missing strscpy() compile-time read overflow check
- fix more boot stub build instances where fortification must be disabled
- add reviewed-bys/acks
v1: https://lore.kernel.org/lkml/20210727205855.411487-1-keescook@chromium.org/

Specifically, this series is logically split into several steps:

Clean up remaining simple compile-time memcpy() warnings:
  ipw2x00: Avoid field-overflowing memcpy()
  net/mlx5e: Avoid field-overflowing memcpy()
  rpmsg: glink: Replace strncpy() with strscpy_pad()
  pcmcia: ray_cs: Split memcpy() to avoid bounds check warning

Introduce struct_group() and apply it treewide to avoid compile-time
memcpy() warnings:
  stddef: Introduce struct_group() helper macro
  cxl/core: Replace unions with struct_group()
  skbuff: Switch structure bounds to struct_group()
  bnxt_en: Use struct_group_attr() for memcpy() region
  mwl8k: Use struct_group() for memcpy() region
  libertas: Use struct_group() for memcpy() region
  libertas_tf: Use struct_group() for memcpy() region
  thermal: intel: int340x_thermal: Use struct_group() for memcpy() region
  iommu/amd: Use struct_group() for memcpy() region
  cxgb3: Use struct_group() for memcpy() region
  intersil: Use struct_group() for memcpy() region
  cxgb4: Use struct_group() for memcpy() region
  bnx2x: Use struct_group() for memcpy() region
  drm/amd/pm: Use struct_group() for memcpy() region
  staging: wlan-ng: Use struct_group() for memcpy() region
  drm/mga/mga_ioc32: Use struct_group() for memcpy() region
  net/mlx5e: Use struct_group() for memcpy() region
  HID: cp2112: Use struct_group() for memcpy() region
  media: omap3isp: Use struct_group() for memcpy() region
  sata_fsl: Use struct_group() for memcpy() region

Prepare fortify for additional hardening:
  compiler_types.h: Remove __compiletime_object_size()
  lib/string: Move helper functions out of string.c
  fortify: Move remaining fortify helpers into fortify-string.h
  fortify: Explicitly disable Clang support
  fortify: Fix dropped strcpy() compile-time write overflow check
  fortify: Prepare to improve strnlen() and strlen() warnings
  fortify: Allow strlen() and strnlen() to pass compile-time known lengths

Add compile-time and run-time tests:
  fortify: Add compile-time FORTIFY_SOURCE tests
  lib: Introduce CONFIG_TEST_MEMCPY

Enable new compile-time memcpy() and memmove() bounds checking:
  fortify: Detect struct member overflows in memcpy() at compile-time
  fortify: Detect struct member overflows in memmove() at compile-time

Clean up remaining simple compile-time memset() warnings:
  scsi: ibmvscsi: Avoid multi-field memset() overflow by aiming at srp

Introduce memset_after() and memset_startat() helpers and apply them
(and struct_group()):
  string.h: Introduce memset_after() for wiping trailing members/padding
  xfrm: Use memset_after() to clear padding
  ipv6: Use memset_after() to zero rt6_info
  netfilter: conntrack: Use memset_startat() to zero struct nf_conn
  net: 802: Use memset_startat() to clear struct fields
  net: dccp: Use memset_startat() for TP zeroing
  net: qede: Use memset_startat() for counters
  mac80211: Use memset_after() to clear tx status
  ath11k: Use memset_startat() for clearing queue descriptors
  iw_cxgb4: Use memset_startat() for cpl_t5_pass_accept_rpl
  intel_th: msu: Use memset_startat() for clearing hw header
  IB/mthca: Use memset_startat() for clearing mpt_entry
  btrfs: Use memset_startat() to clear end of struct
  tracing: Use memset_startat() to zero struct trace_iterator
  drbd: Use struct_group() to zero algs
  cm4000_cs: Use struct_group() to zero struct cm4000_dev region
  KVM: x86: Use struct_group() to zero decode cache
  dm integrity: Use struct_group() to zero struct journal_sector
  HID: roccat: Use struct_group() to zero kone_mouse_event
  RDMA/mlx5: Use struct_group() to zero struct mlx5_ib_mr
  powerpc/signal32: Use struct_group() to zero spe regs
  ethtool: stats: Use struct_group() to clear all stats at once
  can: flexcan: Use struct_group() to zero struct flexcan_regs regions
  net/af_iucv: Use struct_group() to zero struct iucv_sock region
  powerpc: Split memset() to avoid multi-field overflow

Enable new compile-time memset() bounds checking:
  fortify: Detect struct member overflows in memset() at compile-time

Enable Clang support:
  fortify: Work around Clang inlining bugs

 arch/arm/boot/compressed/string.c             |   1 +
 arch/powerpc/include/asm/processor.h          |   6 +-
 arch/powerpc/kernel/signal_32.c               |   6 +-
 arch/s390/lib/string.c                        |   3 +
 arch/x86/boot/compressed/misc.c               |   3 +-
 arch/x86/boot/compressed/misc.h               |   2 +
 arch/x86/boot/compressed/pgtable_64.c         |   2 +
 arch/x86/kvm/emulate.c                        |   3 +-
 arch/x86/kvm/kvm_emulate.h                    |  19 +-
 arch/x86/lib/memcpy_32.c                      |   1 +
 arch/x86/lib/string_32.c                      |   1 +
 drivers/ata/sata_fsl.c                        |  10 +-
 drivers/block/drbd/drbd_main.c                |   3 +-
 drivers/block/drbd/drbd_protocol.h            |   6 +-
 drivers/block/drbd/drbd_receiver.c            |   3 +-
 drivers/char/pcmcia/cm4000_cs.c               |   9 +-
 drivers/cxl/cxl.h                             |  61 +---
 drivers/gpu/drm/amd/include/atomfirmware.h    |   9 +-
 .../drm/amd/pm/inc/smu11_driver_if_arcturus.h |   3 +-
 .../drm/amd/pm/inc/smu11_driver_if_navi10.h   |   3 +-
 .../amd/pm/inc/smu13_driver_if_aldebaran.h    |   3 +-
 .../gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c |   6 +-
 .../gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c   |  12 +-
 .../drm/amd/pm/swsmu/smu13/aldebaran_ppt.c    |   6 +-
 drivers/gpu/drm/mga/mga_ioc32.c               |  27 +-
 drivers/hid/hid-cp2112.c                      |  14 +-
 drivers/hid/hid-roccat-kone.c                 |   2 +-
 drivers/hid/hid-roccat-kone.h                 |  12 +-
 drivers/hwtracing/intel_th/msu.c              |   4 +-
 drivers/infiniband/hw/cxgb4/cm.c              |   5 +-
 drivers/infiniband/hw/mlx5/mlx5_ib.h          |   4 +-
 drivers/infiniband/hw/mthca/mthca_mr.c        |   3 +-
 drivers/iommu/amd/init.c                      |   9 +-
 drivers/macintosh/smu.c                       |   3 +-
 drivers/md/dm-integrity.c                     |   9 +-
 drivers/media/platform/omap3isp/ispstat.c     |   5 +-
 drivers/net/can/flexcan.c                     |  68 ++--
 .../net/ethernet/broadcom/bnx2x/bnx2x_stats.c |   7 +-
 .../net/ethernet/broadcom/bnx2x/bnx2x_stats.h |  14 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c |   4 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h |  14 +-
 drivers/net/ethernet/chelsio/cxgb3/sge.c      |   9 +-
 drivers/net/ethernet/chelsio/cxgb4/sge.c      |   8 +-
 drivers/net/ethernet/chelsio/cxgb4/t4_msg.h   |   2 +-
 drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h |  10 +-
 drivers/net/ethernet/chelsio/cxgb4vf/sge.c    |   7 +-
 drivers/net/ethernet/mellanox/mlx5/core/en.h  |   4 +-
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  |   4 +-
 .../net/ethernet/mellanox/mlx5/core/en_tx.c   |   2 +-
 drivers/net/ethernet/qlogic/qede/qede_main.c  |   2 +-
 drivers/net/wireguard/queueing.h              |   4 +-
 drivers/net/wireless/ath/ath11k/hal_rx.c      |  13 +-
 drivers/net/wireless/ath/carl9170/tx.c        |  11 +-
 .../net/wireless/intel/ipw2x00/libipw_rx.c    |  56 +---
 .../net/wireless/intersil/hostap/hostap_hw.c  |   5 +-
 .../wireless/intersil/hostap/hostap_wlan.h    |  14 +-
 drivers/net/wireless/intersil/p54/txrx.c      |   6 +-
 drivers/net/wireless/marvell/libertas/host.h  |  10 +-
 drivers/net/wireless/marvell/libertas/tx.c    |   5 +-
 .../marvell/libertas_tf/libertas_tf.h         |  10 +-
 .../net/wireless/marvell/libertas_tf/main.c   |   3 +-
 drivers/net/wireless/marvell/mwl8k.c          |  10 +-
 drivers/net/wireless/ray_cs.c                 |   4 +-
 drivers/rpmsg/qcom_glink_native.c             |   2 +-
 drivers/scsi/ibmvscsi/ibmvscsi.c              |   3 +-
 drivers/staging/wlan-ng/hfa384x.h             |  16 +-
 drivers/staging/wlan-ng/hfa384x_usb.c         |   4 +-
 .../intel/int340x_thermal/acpi_thermal_rel.c  |   5 +-
 .../intel/int340x_thermal/acpi_thermal_rel.h  |  48 +--
 fs/btrfs/root-tree.c                          |   6 +-
 include/linux/compiler-gcc.h                  |   2 -
 include/linux/compiler_types.h                |   4 -
 include/linux/fortify-string.h                | 308 +++++++++++++-----
 include/linux/if_vlan.h                       |   6 +-
 include/linux/skbuff.h                        |   9 +-
 include/linux/stddef.h                        |  47 +++
 include/linux/string.h                        |  43 ++-
 include/linux/thread_info.h                   |   2 +-
 include/net/iucv/af_iucv.h                    |  10 +-
 include/net/mac80211.h                        |   7 +-
 include/uapi/drm/mga_drm.h                    |  22 +-
 include/uapi/linux/omap3isp.h                 |  21 +-
 include/uapi/linux/stddef.h                   |  21 ++
 kernel/trace/trace.c                          |   4 +-
 lib/.gitignore                                |   2 +
 lib/Kconfig.debug                             |   7 +
 lib/Makefile                                  |  35 ++
 lib/string.c                                  | 210 +-----------
 lib/string_helpers.c                          | 201 ++++++++++++
 lib/test_fortify/read_overflow-memchr.c       |   5 +
 lib/test_fortify/read_overflow-memchr_inv.c   |   5 +
 lib/test_fortify/read_overflow-memcmp.c       |   5 +
 lib/test_fortify/read_overflow-memscan.c      |   5 +
 lib/test_fortify/read_overflow2-memcmp.c      |   5 +
 lib/test_fortify/read_overflow2-memcpy.c      |   5 +
 lib/test_fortify/read_overflow2-memmove.c     |   5 +
 .../read_overflow2_field-memcpy.c             |   5 +
 .../read_overflow2_field-memmove.c            |   5 +
 lib/test_fortify/test_fortify.h               |  35 ++
 lib/test_fortify/write_overflow-memcpy.c      |   5 +
 lib/test_fortify/write_overflow-memmove.c     |   5 +
 lib/test_fortify/write_overflow-memset.c      |   5 +
 lib/test_fortify/write_overflow-strcpy-lit.c  |   5 +
 lib/test_fortify/write_overflow-strcpy.c      |   5 +
 lib/test_fortify/write_overflow-strlcpy-src.c |   5 +
 lib/test_fortify/write_overflow-strlcpy.c     |   5 +
 lib/test_fortify/write_overflow-strncpy-src.c |   5 +
 lib/test_fortify/write_overflow-strncpy.c     |   5 +
 lib/test_fortify/write_overflow-strscpy.c     |   5 +
 .../write_overflow_field-memcpy.c             |   5 +
 .../write_overflow_field-memmove.c            |   5 +
 .../write_overflow_field-memset.c             |   5 +
 lib/test_memcpy.c                             | 288 ++++++++++++++++
 net/802/hippi.c                               |   2 +-
 net/core/skbuff.c                             |  14 +-
 net/dccp/trace.h                              |   4 +-
 net/ethtool/stats.c                           |  15 +-
 net/ipv6/route.c                              |   4 +-
 net/iucv/af_iucv.c                            |   2 +-
 net/netfilter/nf_conntrack_core.c             |   4 +-
 net/xfrm/xfrm_policy.c                        |   4 +-
 net/xfrm/xfrm_user.c                          |   2 +-
 scripts/test_fortify.sh                       |  59 ++++
 security/Kconfig                              |   3 +
 124 files changed, 1489 insertions(+), 686 deletions(-)
 create mode 100644 lib/test_fortify/read_overflow-memchr.c
 create mode 100644 lib/test_fortify/read_overflow-memchr_inv.c
 create mode 100644 lib/test_fortify/read_overflow-memcmp.c
 create mode 100644 lib/test_fortify/read_overflow-memscan.c
 create mode 100644 lib/test_fortify/read_overflow2-memcmp.c
 create mode 100644 lib/test_fortify/read_overflow2-memcpy.c
 create mode 100644 lib/test_fortify/read_overflow2-memmove.c
 create mode 100644 lib/test_fortify/read_overflow2_field-memcpy.c
 create mode 100644 lib/test_fortify/read_overflow2_field-memmove.c
 create mode 100644 lib/test_fortify/test_fortify.h
 create mode 100644 lib/test_fortify/write_overflow-memcpy.c
 create mode 100644 lib/test_fortify/write_overflow-memmove.c
 create mode 100644 lib/test_fortify/write_overflow-memset.c
 create mode 100644 lib/test_fortify/write_overflow-strcpy-lit.c
 create mode 100644 lib/test_fortify/write_overflow-strcpy.c
 create mode 100644 lib/test_fortify/write_overflow-strlcpy-src.c
 create mode 100644 lib/test_fortify/write_overflow-strlcpy.c
 create mode 100644 lib/test_fortify/write_overflow-strncpy-src.c
 create mode 100644 lib/test_fortify/write_overflow-strncpy.c
 create mode 100644 lib/test_fortify/write_overflow-strscpy.c
 create mode 100644 lib/test_fortify/write_overflow_field-memcpy.c
 create mode 100644 lib/test_fortify/write_overflow_field-memmove.c
 create mode 100644 lib/test_fortify/write_overflow_field-memset.c
 create mode 100644 lib/test_memcpy.c
 create mode 100644 scripts/test_fortify.sh

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-1-keescook%40chromium.org.
