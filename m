Return-Path: <clang-built-linux+bncBAABBPPJZL3AKGQEKO7JX6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-f188.google.com (mail-qk1-f188.google.com [209.85.222.188])
	by mail.lfdr.de (Postfix) with ESMTPS id 392341E9365
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 21:32:14 +0200 (CEST)
Received: by mail-qk1-f188.google.com with SMTP id y64sf4663437qkc.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 12:32:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590867133; cv=pass;
        d=google.com; s=arc-20160816;
        b=CjLuL0I3Ty58sCOQjlZMkv2TjZoSadq42/gLyG5QUFjx6M7VMFPO7CoRF71yCt0mn0
         wKxQyIUQQxFzLz/4nPPnXm978dNyjl603ydbyJWvEmuqjJOZ2s4+dw9BY2cT1s2+J47G
         sH4eRzcX5KDZ7Wq9Zow1/PuZniXfgumkze7WxU9TxT+y31XzZj2NHLEJ4Wn6Tqw6Ting
         654XyHC4yLZDnJXloFKUxiBWqIef8PR2UgC1ahOz9ux/Yt3nR3KWxIEyun23eoW+RJb5
         b68t6yLEXU0BbLApF0n8AVqqAnIJLElGfPrO1E39VTtov3virXxcpB254HlyuRliulsv
         VDgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:mime-version:message-id:date
         :subject:cc:to:from;
        bh=FReSa8aqSzdYr4B3LKRYBOVzSETaw9ckLN3OTImgg4c=;
        b=Lb4N5hlO6txcS4v7nVTAKz7GWilAJPfN7QsmjA/dIeuVT04zHIGaNUBFSWTyf0orUd
         uBDHpMZhLiZ6o+nMGqZ3G03/JEjHTj+cmjoi6ZaTGsU5FHYnofDdriBYCBqtqHvbW2aI
         3LX6OsFJwdsD17Pdd5/tsKNXzmIM7CkCmZipUq44lr9FHBgxoNEwAxo0+MOV6dhXI7Ty
         abpXBrvqJIlrttKZ9iEUUFrdH98sjMhB2ZbZwGOhF6dCTIMaC7IMZ5jNlHAD0Uu9Ppmf
         yRVEqwy3FjsOuqr2YWMe8GapJK088T2WUW9LjCoj1AkgTAwe02hOyIquypon2XOIAFey
         7gEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C5IUTglm;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :sender:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FReSa8aqSzdYr4B3LKRYBOVzSETaw9ckLN3OTImgg4c=;
        b=MlVKQ7CNgCWfLDZZhw9zbQrghxb59NsFsSOUc07wyB0gWiBBT77A+r0tuiPtfZQTMm
         fRuADNWaotpeWAfMa/4+GgoS5ZMCvb/wD214fTcRs5R+yR+oIwRMVDG/xeziTy9EbOoo
         d7OsN7VyTqpdCN1v/ddQx9jXnkYhy5PXaHNG6EYrxTwQDnjrryVAq+rSTrDMeLXdGykT
         E8QYfc/M9DBNaT7MAasTD1NRJ2NUcrqXCKWQfyTo89MBu/n/4xhbP/0NWBA3pY15ehaQ
         pZrTIzb4/Z9SuLy3DAToZhFaHwEGKOL3236+rjGQwManXCBbEEHANe5LxbQqreRgR1H+
         Ee8w==
X-Gm-Message-State: AOAM531dQaWS7e/lB7N3zPZwfJD7pTylEPwRKaXaw0ku8vBe8DLkn1jb
	RrHs59BXh+81lgvfTex0RMI=
X-Google-Smtp-Source: ABdhPJzET17Ej5smMSjF5JAHx5NR29xwZiqeXElACygFtGcVUj5DusPOs1BBG7tlYjd5yiMl7uMpAA==
X-Received: by 2002:a37:ba86:: with SMTP id k128mr13711470qkf.64.1590867133102;
        Sat, 30 May 2020 12:32:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a3cc:: with SMTP id m195ls4512685qke.11.gmail; Sat, 30
 May 2020 12:32:12 -0700 (PDT)
X-Received: by 2002:a37:f505:: with SMTP id l5mr13070382qkk.118.1590867132804;
        Sat, 30 May 2020 12:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590867132; cv=none;
        d=google.com; s=arc-20160816;
        b=Q9ODWD7NapPE9/m2RQwHb8aZ40U0y/kfUrQuUA0IvdFnNZES3JNIJApd+Ni3QYf7ux
         7pTBrqvDYV8JCaVZYuVFZRii/iAwUR+vkKcGFU4SxxlV/DVRGbx5/5FcjBx9kpsHIYEG
         ly2XUmQbHwlncbMI7zJjYdu0leN7B4zGLhDfMacHjVdnYqdOt2CSA5FPvKAZxym+E1BA
         rPlVEwCuc/KzIGTx4EqEFqjVt3LfK6ctgpSIeFeq8ApmH4S4142A5zU24PfIKsf7a8cO
         SkbFu0lYhJmpKmDq1mHnakWszkAlf1K3NjUKVO7q1c8fvAY34QtsxGPBMuTDTbpQFhnn
         KQ1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=XlCswzaWCzSrbKVRWXn2AvS5s5nhRluItJKKcZRv0Sk=;
        b=HpYb1MgebUtxKGqt/QazaGGEyWDryEm8s8A2pLg0K32xUGTdstgab0Y+qjKJb1TCQw
         EE9fFYkCPawWkJXEcs9sfqJGyFlAGwrASuMxMDVNCcD0OmpXSGzlRehj0Eiq8WlF451h
         W5ZhXeHESWdVwdpWZ1LvdIYgkvh/wjad/Kwq9Yjq/Yy2DhlrbtKTL57SCzG37LJQvjIE
         /XoVAT288f0Ml8WLbrxMoArxu7vqQ834X7C9FzhfP+aSn+0vUS4HR9jCHaEBaYJaaU13
         C0UpiN6+AjjOUM4RD+utjpbGXU2SmvfDirmONyWQth2EZ8qrvL+MsfzNAGrhhxPFikiU
         TXHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C5IUTglm;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e17si493638qtw.5.2020.05.30.12.32.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 May 2020 12:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6F9EA207D0;
	Sat, 30 May 2020 19:32:11 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
	(envelope-from <mchehab@kernel.org>)
	id 1jf7DF-003LJ5-85; Sat, 30 May 2020 21:32:09 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Jeremy Sowden <jeremy@azazel.net>,
	Arnd Bergmann <arnd@arndb.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	devel@driverdev.osuosl.org,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] A couple additional patches for atomisp
Date: Sat, 30 May 2020 21:32:06 +0200
Message-Id: <cover.1590866796.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=C5IUTglm;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Patch 1 was sent by Arnd already, but, while it improved stack usage with
clang, it broke compilation with gcc ;-(

Each compiler seems to have different issues with different types of
struct initalizers, so we ended needing some discussions in order to find
something that would work for both.

So, the new version works fine with both compilers.

While here, I noticed a file that has nothing but comments. The second
patch gets rid of it.

Arnd Bergmann (1):
  staging: media: atomisp: fix stack overflow in init_pipe_defaults()

Mauro Carvalho Chehab (1):
  media: atomisp: get rid of sh_css_pipe.c

 drivers/staging/media/atomisp/Makefile        |  1 -
 .../media/atomisp/pci/ia_css_frame_public.h   |  6 ++---
 .../staging/media/atomisp/pci/ia_css_pipe.h   | 15 ++++-------
 .../media/atomisp/pci/ia_css_pipe_public.h    |  6 ++---
 .../staging/media/atomisp/pci/ia_css_types.h  |  6 ++---
 .../sdis/common/ia_css_sdis_common_types.h    |  9 +++----
 .../runtime/binary/interface/ia_css_binary.h  |  3 +--
 .../pipeline/interface/ia_css_pipeline.h      |  3 +--
 .../pci/runtime/pipeline/src/pipeline.c       | 13 ++++++---
 drivers/staging/media/atomisp/pci/sh_css.c    | 27 +++++++++++++------
 .../staging/media/atomisp/pci/sh_css_pipe.c   | 17 ------------
 11 files changed, 46 insertions(+), 60 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/pci/sh_css_pipe.c

-- 
2.26.2


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1590866796.git.mchehab%2Bhuawei%40kernel.org.
