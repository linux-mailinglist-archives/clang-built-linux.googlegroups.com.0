Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAEERCEQMGQEUJ73OHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4803F3E57
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:30 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id r21-20020a63d9150000b029023ccd23c20csf8291454pgg.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618689; cv=pass;
        d=google.com; s=arc-20160816;
        b=R5yLFdWYezKZgOl24W5KbYZSy8ESppdNfKxMlsxjhdV6PTPhSqC9KACPes32fUCnv6
         9o+WUdfoMB+uRJM/+kccS0+/G6ZRfpuVK2zjua7s/bP75oVfvF+uhYu6vQzW+R2A7+FH
         K4SDHRZr7c+cm8zUembRMmcMm9m39310QujhPCw8sHGMQvZwAb/eHOlMQ5Ckv/5qioB7
         /clmWUPMfS9w1dzQcjEd7zKaAemvl7EhyiJhcuS3bdOFdGiQwMcz3IWYo3zfcyp8La+P
         5z6VAUrd4v4CvfQvP7PAe0lp1sfeIByMpcLBJOaehpWeLJZzRoRvQ9Bbf+C49iQ0rynY
         sqTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=YgXmcKskMHDLyR/T4i1x1cHPEtffYQbjm6X02/5myp4=;
        b=MlQSUNEJVWygbG0bIDwpRRGbEePUiYeuCojGAyd0hlVroBE64HFdQ73ZO8gQ82YA3Z
         JcBOSxEXDIsJzRlp9pyaBSr3xTQXjG0DRNs4eA6DUTnGSXAMp1pQ5HJ1ZkSFO7HUTmn2
         WAC+H0H31/YdLynylIUhO67Q4p5Zb3lTnCwcppCcMcDkEuhGHMQxE3zuDpWeF9cCv8CU
         KqchRsP1xpOV1xF5oHeG5DgV5ZuNUraJZpWlgYisAmia7IcR5jyLtoOk5NnEvDWFbjvE
         V/vhJL2DIZdKGJjwWFdFq9J5rtsVXlAkmhdOFoTWDAMss9/LODMVuGvNCjEK4kk1nOMO
         ZRWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q8QtAkeV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YgXmcKskMHDLyR/T4i1x1cHPEtffYQbjm6X02/5myp4=;
        b=ka9KCJoZ/Z/B3Nhg6vfxqfSI8E6ix2mRkcnvWJhZcXWLobu564DYMHWAZfIrEX6QeN
         Bgp348NjG7M1J+9q6ZgWBpkLVnkuNy67iyN92x+P+uV1RJ+U7nQF/yw5hX+5NXQWRhSl
         uf5a12DF8bOw2VpIrZVdIJOfu20riUVEPTfdmfiqp1EzFux9LORj4tDNH+zwv0dh5oX+
         sEiUh13ki5+ura6v47w7h/t4x2pXYnxLGgRSsOhE+nT51HWtjam6x0gcJ5hb7McCbgQp
         1hC0xCNliyvePKPkY2Xi7FZ6YrJZqHejrYQkUx+cmt3uctlMQNVQpiSCYlNqyC72DT/Z
         XyYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YgXmcKskMHDLyR/T4i1x1cHPEtffYQbjm6X02/5myp4=;
        b=sfhnfjd/G68g/vbTEro5fUEWVD4CHaTa3mbbvUc/AmMKC0cgn8MX0MwopPd7V8Akjw
         2nbTA5KNBF7nXn6A5WciYVaxuGtrB3EwrplKkZMHYCZ4U7/l8yAynIQHEalPGgjVdwH6
         dqJv9r3f+HcOmqCp7MDAw+Qr3EevUocQpNqe/KAKCcKK6wppsjqW0QN5bfZiisMFY38X
         7WS1x2BM3vgUI1t+/Mt1QP492TQ4BFWqjPXTlAb294v/VYw1QV7YrsvWQrV2MnK9zPH+
         44A5RvUJi6UH1gD1hBZF3VF0BXLHR4YKaXMNgoIwIuc1aW8VuQzYh4nqUM05YO46CoMU
         jcRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sj89R+0/klRVABbnDL9L6kwQV+iVkpDGDnYOww4tMRixvKcko
	/8dPHXaEbfboeYFDLNUDtc8=
X-Google-Smtp-Source: ABdhPJyoPmpR58mBM1nLzD7X7fMnqGYepHf4wAZhGLy5t36riwFpdGjKxbbNbPCL9wuxMX0iIA7GtA==
X-Received: by 2002:a62:e71a:0:b0:3e2:924d:b025 with SMTP id s26-20020a62e71a000000b003e2924db025mr26610516pfh.74.1629618688930;
        Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:149:: with SMTP id z9ls6948343pje.2.gmail; Sun, 22
 Aug 2021 00:51:28 -0700 (PDT)
X-Received: by 2002:a17:902:e804:b0:12d:b49f:bf1e with SMTP id u4-20020a170902e80400b0012db49fbf1emr23648534plg.75.1629618688337;
        Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618688; cv=none;
        d=google.com; s=arc-20160816;
        b=Fnv3Cdeo8gWbE3OeJtjeyY7oMBxkujugL4DOGz4t8i2KzD61/hB0MQhgvAGI82ZOzY
         DSjunff74spBIRs8MphOfZD/10qINKo6k5bTpzS0Xs0T+lwZTAg8vkj9V2ku2+9vROek
         zckh3NpL/4aMikHV80lEcdsKK9xOyZRSEiqCL5jvV5hK+K8xw4q//xBeZqdgkqcQ7cFH
         CmJ5rG+vqDu+Aq4FFpTtyhVYTBBC5n9v7DyhVIasbR77+79xPvSRq+49RfPkq6e8/14g
         RHVFNtLTKG/3DEMssKkN0VVUftltqAptSJAB7XrivQ0Gc4AvXIW8YRHjPtZzAaPpcEkW
         wAiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=am5+0lycZIk04twfBqM4+s6qa8a+zRI/XASrtMJYUmk=;
        b=KnDy4RmURtAf0taWVSHsqCle0mAsnsPYob/tGlaE3QIOuVoVgRMJpaf2H6iW4fXbvu
         Z9p/3WOnrv7W6S+SxUzDBF0zfnRh21OX+gWrBJGjryngzF6L1ar5Uh6h8JY0bLxX518L
         MRoeWUGMlWwrtBHfz178NALlCWM5LOt8fyRRdprUON3nhdk6ZctMvffhhCoCyLX+OElH
         LTQ35plPwzsIeHfOrmBBuna0gk9cTPKHkBQU9w/4q+ROwLsV8kDaPmJ4jl1w4KQCWnwm
         wsg49ro/YanIYc5as/O4/3tUgNTNFuIMd426D+LU8xvtZC/DJ8bhWW/rmQ0YskKoS9d+
         /IAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q8QtAkeV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id u14si296088pgi.5.2021.08.22.00.51.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id o10so8430436plg.0
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
X-Received: by 2002:a17:902:9f87:b029:12d:316c:2b6f with SMTP id g7-20020a1709029f87b029012d316c2b6fmr23736449plq.20.1629618688077;
        Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y27sm5534628pfa.29.2021.08.22.00.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 00/25] Prepare for better FORTIFY_SOURCE
Date: Sun, 22 Aug 2021 00:50:57 -0700
Message-Id: <20210822075122.864511-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6640; h=from:subject; bh=2oB/qr8U5A9dbEoV6QCH+oIQNWp51rj1y+EgjbJ1gFM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH0QQhRt5uNs0Hc8yeCDnG29Dc0nXypDoIpSkdQ AMMMlj2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9AAKCRCJcvTf3G3AJgX4D/ 9KaXQZxp9eoRSwxtgQbAo80Tia7YY3oMxKwgjTDFtSGBaDknXDn8uo7IsSO/1csc9k5ycQ3/a+kT1o xUjbGspj8/Q96C8n0+9MS/ap0Jmp2lMKBuDzzfDP/2rh7yWCBnJNPut+eLn/iivb1Ij8NyE0es2fMe FQVMyovulfK777G1wR84BUoR3Wba0qMxxrDXrIioiOlKhZ7AC3Mxf8JdskVbCv3RorlR56rHlLMKPH Aits514/9D9S9nUk+sR6Q7Wu8YcHy4u4X1aL4O8EH8NTd4qTXOUZTDwxv7kcqcbeLUcdzudMFGAJpD VNrFNkTNGjVmg56mbQP71FTmYfITIp1m3WVLLIzODXq8yS4JZRHKzo/eFVZir+ROwzWoRPcZhsbA1F owBGVu7JMnL+ArDhrLgx/RRU+9GbO/iQIvlwjqV5k/1h/0D9Bj1AysmJwMDRBVjZKIQ+7/GzE92DEK Jg2C7pwxlKYo9gJflEEC+6yqRZgaz0tnnlolLv7L9f0Ov+zGixlDgkfILkS5Jne1OJ+qybOR7v1zD0 B5ttkdE31/MpoG5v+dnWOeB4g7BVeMwYjEYvIDu1gSUhWKR+tN6eNQo9Ppc2SzMBADw26caihma33t Lh4fpoc8qfWAqIsI/miVxkdjd1Pb4uNXkC4OLkMqw/EE+XC7i498ypKhe2mQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Q8QtAkeV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d
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

Hi,

This is what I'm going to put into -next in my "overflow" tree, based on
the v2 of the most recent memcpy series[1]. It includes many of the
Ack/Reviewed patches, as well as most of the new helpers, the new
FORTIFY compile-time tests, memcpy() run-time tests, and the start of
the FORTIFY macro refactoring.

Any Acks/Reviews on the fortify changes are appreciated! :)

-Kees

[1] https://lore.kernel.org/lkml/20210818060533.3569517-1-keescook@chromium.org/

Changes since v2:
- teach script/kernel-doc about struct_group()
- split memset_after() from memset_startat()
- add MAINTAINERS section for FORTIFY_SOURCE

Kees Cook (25):
  scsi: ibmvscsi: Avoid multi-field memset() overflow by aiming at srp
  powerpc: Split memset() to avoid multi-field overflow
  stddef: Fix kerndoc for sizeof_field() and offsetofend()
  stddef: Introduce struct_group() helper macro
  cxl/core: Replace unions with struct_group()
  bnxt_en: Use struct_group_attr() for memcpy() region
  iommu/amd: Use struct_group() for memcpy() region
  drm/mga/mga_ioc32: Use struct_group() for memcpy() region
  HID: cp2112: Use struct_group() for memcpy() region
  HID: roccat: Use struct_group() to zero kone_mouse_event
  can: flexcan: Use struct_group() to zero struct flexcan_regs regions
  cm4000_cs: Use struct_group() to zero struct cm4000_dev region
  compiler_types.h: Remove __compiletime_object_size()
  lib/string: Move helper functions out of string.c
  fortify: Move remaining fortify helpers into fortify-string.h
  fortify: Explicitly disable Clang support
  fortify: Fix dropped strcpy() compile-time write overflow check
  fortify: Prepare to improve strnlen() and strlen() warnings
  fortify: Allow strlen() and strnlen() to pass compile-time known
    lengths
  fortify: Add compile-time FORTIFY_SOURCE tests
  lib: Introduce CONFIG_TEST_MEMCPY
  string.h: Introduce memset_after() for wiping trailing members/padding
  xfrm: Use memset_after() to clear padding
  string.h: Introduce memset_startat() for wiping trailing members and
    padding
  btrfs: Use memset_startat() to clear end of struct

 MAINTAINERS                                   |   9 +
 arch/arm/boot/compressed/string.c             |   1 +
 arch/s390/lib/string.c                        |   3 +
 arch/x86/boot/compressed/misc.h               |   2 +
 arch/x86/boot/compressed/pgtable_64.c         |   2 +
 arch/x86/lib/string_32.c                      |   1 +
 drivers/char/pcmcia/cm4000_cs.c               |   9 +-
 drivers/cxl/cxl.h                             |  61 ++--
 drivers/gpu/drm/mga/mga_ioc32.c               |  27 +-
 drivers/hid/hid-cp2112.c                      |  14 +-
 drivers/hid/hid-roccat-kone.c                 |   2 +-
 drivers/hid/hid-roccat-kone.h                 |  12 +-
 drivers/iommu/amd/init.c                      |   9 +-
 drivers/macintosh/smu.c                       |   3 +-
 drivers/net/can/flexcan.c                     |  68 ++---
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c |   4 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h |  14 +-
 drivers/scsi/ibmvscsi/ibmvscsi.c              |   3 +-
 fs/btrfs/root-tree.c                          |   6 +-
 include/linux/compiler-gcc.h                  |   2 -
 include/linux/compiler_types.h                |   4 -
 include/linux/fortify-string.h                |  75 +++--
 include/linux/stddef.h                        |  52 +++-
 include/linux/string.h                        |  44 ++-
 include/linux/thread_info.h                   |   2 +-
 include/uapi/drm/mga_drm.h                    |  22 +-
 include/uapi/linux/stddef.h                   |  21 ++
 lib/.gitignore                                |   2 +
 lib/Kconfig.debug                             |  11 +
 lib/Makefile                                  |  34 +++
 lib/string.c                                  | 210 +------------
 lib/string_helpers.c                          | 195 ++++++++++++
 lib/test_fortify/read_overflow-memchr.c       |   5 +
 lib/test_fortify/read_overflow-memchr_inv.c   |   5 +
 lib/test_fortify/read_overflow-memcmp.c       |   5 +
 lib/test_fortify/read_overflow-memscan.c      |   5 +
 lib/test_fortify/read_overflow2-memcmp.c      |   5 +
 lib/test_fortify/read_overflow2-memcpy.c      |   5 +
 lib/test_fortify/read_overflow2-memmove.c     |   5 +
 lib/test_fortify/test_fortify.h               |  35 +++
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
 lib/test_memcpy.c                             | 289 ++++++++++++++++++
 net/xfrm/xfrm_policy.c                        |   4 +-
 net/xfrm/xfrm_user.c                          |   2 +-
 scripts/kernel-doc                            |   7 +
 scripts/test_fortify.sh                       |  59 ++++
 security/Kconfig                              |   3 +
 56 files changed, 1028 insertions(+), 380 deletions(-)
 create mode 100644 lib/test_fortify/read_overflow-memchr.c
 create mode 100644 lib/test_fortify/read_overflow-memchr_inv.c
 create mode 100644 lib/test_fortify/read_overflow-memcmp.c
 create mode 100644 lib/test_fortify/read_overflow-memscan.c
 create mode 100644 lib/test_fortify/read_overflow2-memcmp.c
 create mode 100644 lib/test_fortify/read_overflow2-memcpy.c
 create mode 100644 lib/test_fortify/read_overflow2-memmove.c
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
 create mode 100644 lib/test_memcpy.c
 create mode 100644 scripts/test_fortify.sh

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-1-keescook%40chromium.org.
