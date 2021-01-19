Return-Path: <clang-built-linux+bncBDSIRFEA54GRB4VXTOAAMGQEME5BF5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DC92FB64A
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 14:17:38 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id u29sf9902502wru.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 05:17:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611062258; cv=pass;
        d=google.com; s=arc-20160816;
        b=AHJt7TSNcaccZTLDSAguDuikv2z4yLEokvgZiTaeEBe+vqFrySlF0UQWBoeqmkleeF
         wHsEH29pvMBSCebviAWXv1M9Ptd/zgcLSACJ0awxW8Yvs0muwvHI5gmwBC2hBgQC0Oqo
         z1PN/u1tANdMQoQw48ichRf4az9yZ6gVAULw+eqfjuuiN0DIQ/AS4NHtEiiJlLr1ui2k
         zq1KMX0KN1NvmpmQA9eH828ptqaBlMapntEI1dcq/7wBjDS3bjuSA9yj9zlLybpolHc7
         Sav7Gs7EF/K9Tp2HX27NcepRKj7ZshLh3V2bNA0bAt0E61N3+Rrw83ZjLtP6eXKzncg9
         NExA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=6jJJ5yDtoQ6RLYOi41LH69kKOoSc6VxJSUeuNl05whA=;
        b=EpjJdZ/cx1LSCLa2vTY2qz+YGStudAIv/g9qFLNlwYrpVbYazo3g3LPy8TSMLDFiKI
         h5+ko1OhT1wgmPMXcIl6BVEldia1kjtXriM0ikIPHVcRgrVwPNDd+pokVkwNVllX5D0T
         Z2M3DaEF6g/EYnMSCuVRLPlKIqkpYR9xCve6swPACStvdTpuk+zDbQMg3Nf0PwZY1p7E
         nLjenGSKUIbhVU++l7ITZ7YmwQjKUQmeLPMWY+flfYTqHx+7uzm9hR9rmCCExX1oT7Tn
         ETgqEh9Aj+q3yYdNLPXuEW5LigXc0wwyIO/g8HSGm5oKrd6XroROjckMj6SZSzA7G9fs
         rj4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6jJJ5yDtoQ6RLYOi41LH69kKOoSc6VxJSUeuNl05whA=;
        b=fvhTBCs0gez14s2Th+vnD7Z4rJwCUOBtV86eha1hTYSkbTSx/jbXuk1YHRJRFEdV7z
         vLl21GNAptu/eHi1IZ5GPRnlCLMb2IOPm5P1JfHxJWhzprJxBzS1W17othUQfeRNeLHG
         cLzQGmwq/aaqx/PKn4coNeLhFZYNjsAQIzZpDosm/2zkupaKMca4Rb7Ap93j+YJFK1KX
         1Mp3a1wtHTulSwFMVpYzfZJKQ23eXik493ldlQqZ2+W6nTTIqCUnqom+MtJxkBfzNztl
         HEkC7xDUpphqZ3bNakOVYK9I3jcOjGZuA+S41WrBbMXjVb52yyAQJlP1svE1bCecl2Gq
         H6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6jJJ5yDtoQ6RLYOi41LH69kKOoSc6VxJSUeuNl05whA=;
        b=GoV9onCiS6BUVPVhFlx2Hq7FfTmAG9PyGiS9F5YvjP1IZZQXhAMIiy3KsAuWCDpn5v
         jfimUrryXfFtgwNvsrraE8vXp9N77SWbQfbj0BMhDG2QcgoDJT2kzH4F38nX/hImcla2
         bzsI8U2WpQ9fwgCa+ux5eAURD59tT+il/mkO0dY8l97ZdT6PEemZWAWqd414xgs+V95T
         TWfiFzRH3in/RTlIlv6rnbXPZfFMX1Omdihn+VE6kG7sjbbF3KgC6yBmuIBuI8hBS/mK
         j7IpdEDjLxEIMvwcuO74dPZn4Indla9DPLeuWOr7zlYJnBsvRX8Sz1yjcGrq3IXyyFRu
         Dj5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EGTs3wgilV35TCk/KEmZC1Gz1Y2nd8YNLbgqcmx7GgKP+hSb3
	GQm1Z8jKMdoYIAj1LxW3BcM=
X-Google-Smtp-Source: ABdhPJyby9leWNLFLxPorBxm8J+vmmKITuUWiRUA/afAzldd0T7kjf2Uh9JBD2ag6TiCwNm3foWuoQ==
X-Received: by 2002:adf:d085:: with SMTP id y5mr4463037wrh.41.1611062258741;
        Tue, 19 Jan 2021 05:17:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls13144039wrw.0.gmail; Tue, 19 Jan
 2021 05:17:31 -0800 (PST)
X-Received: by 2002:a5d:4d4f:: with SMTP id a15mr4329754wru.315.1611062251959;
        Tue, 19 Jan 2021 05:17:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611062251; cv=none;
        d=google.com; s=arc-20160816;
        b=DsyJ327Mvs0rGYvtmIrMHID0NaQZJJ2HugvorSPobp0yppj1qf56muLRW3UCDTgGs6
         JaK1ShQT6H+WI3NyZWVviS8jzEidJY7oPenql6wvGrBY7BIgczb8373jVtrnF4/hxm0y
         97IBQoU7yjFFXnGKtU6hXUrPNMiv0US3FNsoBGb6uQgDApPFhtfguHTARzvviKRL0S6f
         do/fREMpuP0r49YawJq/5nf4hTWDU4VQq9fNE4cxquOwpAXHOJQgdh/jFnDrfvmH3wbd
         2sZyjM6PpNk/4sZ7XjzDqsXILKJ6t6kROXc4vGvah2cHSoVDGc9fPyzHDU9OXPZp9ZIf
         s45w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Qps40AQaaId4kh3JpfHKDkM/tGNSf7uc+rOWc/pCnic=;
        b=r31FWey3xRmMFmFJaKUOcyaQoEObZns3GOZCoViq+vt8pixILrY+1AFFc0WTeiKOrv
         9JEr/pIBmxyJYhn7u4WB2y3yQA2FrCB5HGRNft/kSLsRBc7FUpzkLsxRNal6h/QNuceE
         E2fYSw9MwBO+wtVtKc5pxCd8eihabx76Us2/clfcaYAmuRh1Gk6y3XcWEfjxagTYe1+S
         t95QfEKOsRSoOcjTjfFSvNROHyMDG5v0+m5SmeCiZQPaGE14Xb/40HSC1EG8Ca20Pu3g
         WGLHyfXkvxOei2/uZc3sDctq1JdZ71lkioh96dch559e7KPxEP9DI79nhnrvGR8poaEh
         91rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id y1si1001239wrl.4.2021.01.19.05.17.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Jan 2021 05:17:31 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 43E8B1F451B8
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel@collabora.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 0/2] xor-neon: Remove GCC warn & pragmas
Date: Tue, 19 Jan 2021 15:17:22 +0200
Message-Id: <20210119131724.308884-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Dear all,

In v4 a Clang-specific vectorization warning was added at
Arnd suggestion.

This series does not address the Clang vectorize not working
bug itself which is a known pre-existing issued documented
at [1] [2] [3]. Clang vectorization needs to be investigated
in more deepth and fixed separately. The purpouse of this is
to only fix some low-hanging-fruit GCC related isues.

Tested on next-20210118 using GCC 10.2.0 and Clang 10.0.1.

[1] https://bugs.llvm.org/show_bug.cgi?id=40976
[2] https://github.com/ClangBuiltLinux/linux/issues/503
[3] https://github.com/ClangBuiltLinux/linux/issues/496

Kind regards,
Adrian

Adrian Ratiu (1):
  arm: lib: xor-neon: move pragma options to makefile

Nathan Chancellor (1):
  arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning

 arch/arm/lib/Makefile   |  2 +-
 arch/arm/lib/xor-neon.c | 18 +++++-------------
 2 files changed, 6 insertions(+), 14 deletions(-)

-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210119131724.308884-1-adrian.ratiu%40collabora.com.
