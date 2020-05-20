Return-Path: <clang-built-linux+bncBCIO53XE7YHBBOXLS33AKGQEAJ44SKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 682E11DC280
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 00:57:00 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id l2sf1977167iok.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 15:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590015419; cv=pass;
        d=google.com; s=arc-20160816;
        b=o47LAOEE5HjGa5Oh/NVNFIui+uew+USvYbZoBc+Z/WGqq9X5rdHYa07wjg/+vvkkWz
         qxLVLq23t5G+hXKzXShoFneDp3VlmLIWHkcvUNiFKOHKNVch20q2DgoPeUQm2DWyP0nR
         U0k15UvsJPccfNXyVVGcCTdVN37Vzlc1xi7WP/ws/5nF7gB6pnCbmWJ4kzgz2MHrwbsr
         4ZAaSFDZ3McSQu3dCuvqvjKhFx+CIhr5WWIlccCoNgIpQqXrW9dwYcrRWYpJcwI4bgeN
         fjNNxwK8m/sTSNtAXbIXshCQ7LhwC+xrrVxChxX99SaUrRjCbAz6+s/WyOuXGbyWslZ1
         NsEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=c45P3ihk/H/0DOhvtykyuyyaMF0nI/Yx9gz39FG8i0s=;
        b=L7oHvalbbv8dRQn+v+rq8XcVllGQB+BbaoG0yCTn72YU78lVTJ8iKFC5RsMt/wGPex
         Z1V8osrHIIw1TZl0LF+hmCw+dI7AK57LwbsjScBaPGH2vIJ78NUn+vq+nr/TjW1VLRy8
         MxPRk7elu2VGavyekP3Cp2fEk4WrTOglVLrupPq2cILHc9cuFX9TLc+LW0XRK5c2vUnL
         cGkgIJ9anT9adBNkL18e/fgs6GWLRDRnOWCclzQAPemAYCjfhvm7y3Skm4q1gLcq3Y0M
         tIbIzX4JFm5MbCrHugBaanMAVWTRMWizxUCfedi7OjIsTWaPnmtqnr78zG0J2WBULhyi
         v33w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c45P3ihk/H/0DOhvtykyuyyaMF0nI/Yx9gz39FG8i0s=;
        b=SKyfsIrgo8awBp7rHJ79G+SSKk4idxHFoItR5ymecCUhEt9Jgn3NLgsNf7szEuEwh5
         FfqSDDJx0h7OlGcStmNgFWRehk9VnIhJvpLrDNhdtn81T+g+pOnhA8/Yi3rY6ap8k6nX
         NDkEpa4fTgeE8+1s3g+UmiCJb3KVeFtONjp0cKKq5nf5C4yZ+OHdpHHnXVKN3xmLUsx+
         ukwH68A7/lVfr6mZnP080mu3CED8M2YBzTjCzcyJ+MURyiCgfFSB/ZghoohWNiNo8Xhc
         CJP8HLUPOlOTL8fqnD4vnc5HoB5kZCABbNeG6ZW0m3EOpKlQZJwCNC4qk+bp5GMXWrnc
         FeyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c45P3ihk/H/0DOhvtykyuyyaMF0nI/Yx9gz39FG8i0s=;
        b=kDanGoRGxMH/h8luCDItrYSCmvGxEPq4tVElFOfvoBOnopA62zZAfBrb8zsckdmFtw
         Ak+NW3pfZ45mY1YJHZOxf/vBMschbQa0WR6jfOr/LT3rwq5gCbxC2FIPm5R+CAzvqmNB
         W0DOkvvSjJEdSk7pMcqp7uqZx8yVAD9Ya8RPwvcZrWlkGOx2WiKU0daL6piEsjRu73xu
         tkQXJcjrzCggwzB2W2l6KRd/HXZ0qb68ttpkR+sSTeUD6o/2HCECHyfadWkYHrKp01xW
         oxdMgkzl6Eh5eLkz4T4qoHW+Go4IdH2cuD79DeQwXba2XplEZAT1EFPvqGP0oOEgk05S
         wRqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LteD/n9x0Z+ItAWZePv9Cj1vPf3/noUuxnvqQrdIScdUtJYP2
	SoS02InLhuDlZBugzJtOfA0=
X-Google-Smtp-Source: ABdhPJzQzieUDTP68H5LjsBwCQPgSVDl1FHW0s5ydsQsujG4viuQfJ2mXkOUVpN8ftr7tCt0Bc5LSQ==
X-Received: by 2002:a02:3341:: with SMTP id k1mr1408189jak.74.1590015419146;
        Wed, 20 May 2020 15:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:d516:: with SMTP id e22ls28609iom.3.gmail; Wed, 20 May
 2020 15:56:58 -0700 (PDT)
X-Received: by 2002:a6b:ab03:: with SMTP id u3mr5421350ioe.148.1590015417644;
        Wed, 20 May 2020 15:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590015417; cv=none;
        d=google.com; s=arc-20160816;
        b=sQVJA0sUie7KO5QAl4SBkzuemzDjzZTZt/g4qV3VELeg4OMnXMAg72yuRgY4W35ni+
         WAIexSLFMfkNSaPkDTLzLKt5X20H6OVU9UnbrQqPUtLgEA7H2kOSB2SEGbSeKaKEhacf
         VFzR0i8MfhyloxS4Ov9ZB26cMxIjMoGcQiJ2qKsq31ZSkMAcAKN4VaTHBLtA4O2xfdiw
         Pq6KnL1fvX8BUPbf59YbUIKKrt1Qk3N6yK5B5qw/hYJZfBzExLbiXAUvtG3QIKA1rTUy
         KDtR7eycCkByO5Gnc+SRpcQPypvZiBGsMHYj09BBGZKhMQFRTpyKlkx3BAuQupBPcAEz
         XQiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=oroy5IuCfj8lq18W1ZeqHx5gvyy3A0ZRqu7ynovXPPU=;
        b=t1j8Z4CEsLTMMr1NSVeVcPCwng1OaatKBSDaUexVx3cRe/3A5ovwF+3/IDedSwLj/z
         MokntTSpMyrCnRJNwk8CMAuCFtWju7TyuJt5lfSW+aBVboDmnSiBk7ccy5jJrk6qoMsY
         JWIz1xw7jzaRD0fItwoMNzO+N63OEfjLnTR6uzixWAWe+8YfNdblHjM/0AzOV+kx9D+N
         yW0UTGwIeDlNEWrscGSs5vpWwvwnqG/R4AelNbiYiNU/LAqyGvZksAJPa3VpDgnYqkSZ
         RPUeMahcSIPZSNKXnRAKzkBcv/PyJDj38cnhqjh8jUo6+9P93vooMz9VhEYDK4meqoQB
         /WZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com. [209.85.219.65])
        by gmr-mx.google.com with ESMTPS id b11si229359ilf.4.2020.05.20.15.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 15:56:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) client-ip=209.85.219.65;
Received: by mail-qv1-f65.google.com with SMTP id ee19so2201005qvb.11
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 15:56:57 -0700 (PDT)
X-Received: by 2002:ad4:4690:: with SMTP id bq16mr7104434qvb.20.1590015416896;
        Wed, 20 May 2020 15:56:56 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t195sm2221514qke.110.2020.05.20.15.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 15:56:56 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Fangrui Song <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] x86/boot: Add .text.startup to setup.ld
Date: Wed, 20 May 2020 18:56:54 -0400
Message-Id: <20200520225654.4144534-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520225654.4144534-1-nivedita@alum.mit.edu>
References: <20200520225654.4144534-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

gcc puts the main function into .text.startup when compiled with -Os (or
-O2). This results in arch/x86/boot/main.c having a .text.startup
section which is currently not included explicitly in the linker script
setup.ld in the same directory.

The BFD linker places this orphan section immediately after .text, so
this still works. However, LLD git, on 64-bit only, is choosing to place
it immediately after the .bstext section instead (this is the first code
section). This plays havoc with the section layout that setup.elf
requires to create the setup header:

    LD      arch/x86/boot/setup.elf
  ld.lld: error: section .text.startup file range overlaps with .header
  >>> .text.startup range is [0x200040, 0x2001FE]
  >>> .header range is [0x2001EF, 0x20026B]

  ld.lld: error: section .header file range overlaps with .bsdata
  >>> .header range is [0x2001EF, 0x20026B]
  >>> .bsdata range is [0x2001FF, 0x200398]

  ld.lld: error: section .bsdata file range overlaps with .entrytext
  >>> .bsdata range is [0x2001FF, 0x200398]
  >>> .entrytext range is [0x20026C, 0x2002D3]

  ld.lld: error: section .text.startup virtual address range overlaps
  with .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header virtual address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata virtual address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

  ld.lld: error: section .text.startup load address range overlaps with
  .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header load address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata load address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

Explicitly pull .text.startup into the .text output section to avoid
this.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/setup.ld | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 24c95522f231..ed60abcdb089 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -20,7 +20,7 @@ SECTIONS
 	.initdata	: { *(.initdata) }
 	__end_init = .;
 
-	.text		: { *(.text) }
+	.text		: { *(.text.startup) *(.text) }
 	.text32		: { *(.text32) }
 
 	. = ALIGN(16);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520225654.4144534-2-nivedita%40alum.mit.edu.
