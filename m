Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSNFXD3AKGQEVNCLXAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 748D81E39E9
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:12:10 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id q1sf13060994oos.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:12:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590563529; cv=pass;
        d=google.com; s=arc-20160816;
        b=p5aor3q97lceVZB4jL2vEjvO1FusJTGWHblb8rllYfCvmO/X0mVEKqn5GT06SAdJE7
         FLgQEpiHHaZqdt84LV8/BUBguCeOE0k+ciYc8sjJsmykcG9kpRYLwtQpslSr2QfOYi4P
         NrJStpxGsWsadppW1uI8fxg4kF3Tg5DxzU8N570ifHJYEPki+D0m3T3sdLemP6DV48gI
         uh+k2/Aj9ppw9V3z3NlVODnevhGKJnTTEiIs0b6owb4gSrL3Qse7Voj2xRvXhub8VSEV
         wnKOfgW4gBZNubF/Xz+E0r3p8ij2a4+p9GH6aOcODoeR8eJzRrpe3EritQV9jE/WJ2Ua
         XWOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=0OvxszGR6EEm4n6VDP1xEp1kPnjgmBSeW5MAEkltf7Y=;
        b=xjP33Dp+S0k0+vecGBjnIBciqz5hbwoeEWnlKPIj0AmV3Rwu9B4pk/8U3sBU3g2txB
         yWeD2ICP/6DX97EBxYcifagIZgfKmCeom8Qmz/mkjI/mHje1EHbkagi6YqDo2/+hJwLh
         zZLwBHbNRVuzWEBkkpvNLcGT1tLoF29GUCXO8bJY16hPn36KzBnE9J4T0GVGtIIYD8xg
         EylWsvYIUKE50wno1grt7aPTkfEWpVzxn8w9RsOsAq+i8FhVQtBi+7/MF6Wk1vXf7YM9
         rCA+LZB8MN7U80YC7mw97ehU0Fm+hPBDQyFcww4f4itkIRXzRA4JOlzXDmczguCYOZFC
         39Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ktoSMEgu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0OvxszGR6EEm4n6VDP1xEp1kPnjgmBSeW5MAEkltf7Y=;
        b=CfVXn3y8wexj8uy+FBtwWE0KbbnW0586Q0PRu5TBHKu3E6TaztTxWIFYFQbN087sZB
         vCUdTh64SvgxRrciTiZH/AwIixxQ/oRfBvGXpNUILcHlMQqN3FLEsLnn6+VTS4yzXNjb
         cGeOstZ0jEkg2ez6A4J5qWG8bdxKZg645dvNkIFR5uozysOYbYtwUI1nWZsBCX2tbgJI
         ngHZQku4sfYs6DHrcfqpNSouLE7FCUQl0TrZIOJorWQ4P2sv6cZgM/zEoUGWir2ef70I
         Or9xmSZw9bdKWogwjxMyYQjCqEgehOFNH0sCfae+5LC/OGY7o+PeD1pAZiZl1vRsFZzu
         f6VQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0OvxszGR6EEm4n6VDP1xEp1kPnjgmBSeW5MAEkltf7Y=;
        b=uKNjwXiySZX2w8VKf0HO0hLzJaVfzUe489hnnByjlRFBwI5WY2fP7q1EoSUKY1NTkH
         yBjJsvzLsFd+bPMt42L+4WaeQK1ICOhPL9HNjMI2Yex1JeOf8o9nFs+OmifXLRMpL/Aw
         1oxews9xML8k0oWkfRfQgKhfY9Dw7/Kaz/YbQ1FeQTApdRCAxrjw0+VKjm2TQfKrjxB7
         iQ51To5t12dQ5YSLrbQr3RbTY+RYtPmS/zxVUrr+rB9nOOn8zzjtvsdhpVYTHihbR4hR
         y/39R6zuiv2yMzw3dq0qAH8+GhIe1XNPkGT8GBSJWb021dPnYXOy+C/trW9l2j5rqFTH
         XTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0OvxszGR6EEm4n6VDP1xEp1kPnjgmBSeW5MAEkltf7Y=;
        b=HwPtH/hNQ//Fz3l3pPCxkKkUy2sQJAsNK3NNn6MIzfSOxrvWctZj2I3KwM4PbEG6tm
         3Mk8Ve34drWUp7h0zeezQwoVtBlvB1nFyXLOWNf925Y7Dgqahzklf1imSXhUOixQr096
         dKSijayXd42Qu3fn2uRzrpc+bYp1OpSvEEOO5AKVYh1KkJrSc3pC4join4kOovOBmAky
         +N+QIuT03AIcIpDpt51PWRRuN68W/Jb9tE2fJhrVn7pbDMfZQuhA3gnV45If6sKePe0e
         vn7/Q4+iTRBkn+HMO8S6gswVcgbOzN6j/aotrJNwjg1qScw9XXt1KRA2SG3c3ZQACW4r
         lGYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316KN+yylpbGP2+UEdcoH3d2qp/pUiGZjvnJEj8+yx9bcs6r0FJ
	+tgMSB3xZ2GbNhG7CKeiUQA=
X-Google-Smtp-Source: ABdhPJwju1RjtBlQpVd3xbl+MVAKbZfzxf4kUqffLp1wJvPHNd5TXCnjB1f4QXtGHdaWMhEmkbYm8w==
X-Received: by 2002:a05:6808:7c4:: with SMTP id f4mr1850343oij.3.1590563529391;
        Wed, 27 May 2020 00:12:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d656:: with SMTP id n83ls2664440oig.0.gmail; Wed, 27 May
 2020 00:12:09 -0700 (PDT)
X-Received: by 2002:aca:f084:: with SMTP id o126mr1837999oih.106.1590563529071;
        Wed, 27 May 2020 00:12:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590563529; cv=none;
        d=google.com; s=arc-20160816;
        b=KcTBjrlA0ydiKinS/tG/5N7bYadijBjSefrX9cRs4JBT5T4LOKZVIRB2GKjmEfuxpq
         TiaYJ2XQpMJ4cE1u6dXZg+TBA6fHvciG0tL96Jsld03Jd5WgZcpb+bgnLqOBvSwVFR/3
         BSgUZh8iB+1FgLyEEuhcsWmy/1dEr2W2ESehQpVgIFrryidLJQhmpiL8+oTMP5QyzAio
         Izw2eFgglrw5gEVVeXbIrHm9zkI/Ng6M/aUG+Fx+jvurmwiug66ZCvW3lhTbbFWwCXuk
         p8VjbOm2LXydGTgaZJ7TZWAHDezHzb+QjIuY2/sc5Jx/H30z66rPir8Q5YAmPduoOinZ
         Ngxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=sCw1lGoEROKmEmhA5JVEoEjAugXh66VFW++dgNmaAuk=;
        b=NhcHOlWTaqWnY1HMq+1yKl/giawm0Id+Y7IEIgvDOFXoT1q1Q+YDOA0YS9W6vCRFBk
         Blr8HHcFImAlO8h/9yIgNT0YiGp6fh3ZZttYcFCrBZzlpn28bGNdEgClFIF1D5XhLGBa
         5xsckfEFRB0XtA1aF3tquOUgpOW5ab7ecgTMELyKet3tCRV17vOupOnaYsC8Dc4ZWaR4
         DYdVDwF8A5NMEZt4/NncpDfd2rocieB33+bdOFtlndK6M2T5bhOWm6DILCaSsBgqa/Er
         xjNNzJQ0M8+ZH6F86kGT+ykANh3wleXgxLh1iQzpNuj78Co1Guctda4+KQiyK6B6j42t
         2eRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ktoSMEgu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id u15si269701oth.5.2020.05.27.00.12.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:12:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id bg4so4504919plb.3
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:12:09 -0700 (PDT)
X-Received: by 2002:a17:90a:248c:: with SMTP id i12mr3442044pje.213.1590563528110;
        Wed, 27 May 2020 00:12:08 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:12:07 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 0/7] media: atomisp: Address several clang warnings
Date: Wed, 27 May 2020 00:11:43 -0700
Message-Id: <20200527071150.3381228-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ktoSMEgu;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi all,

This series aims to clean up the code while addressing the majority of
clang warnings in this driver, some found by the 0day bot and others
found by me.

There are several enum conversion warnings that happen, which I do not
really know how to solve without understanding how exactly this driver
works. I would appreciate some guidance or a solution. Below are the
warnings, sorry for not wrapping them but they would be hard to read
otherwise.

../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:65: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
        ~                                                              ^~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:101:32: note: expanded from macro 'CSS_FRAME_FORMAT_NV21'
#define CSS_FRAME_FORMAT_NV21           CSS_ID(CSS_FRAME_FORMAT_NV21)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:69:1: note: expanded from here
IA_CSS_FRAME_FORMAT_NV21
^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
        ~                                    ^~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:101:32: note: expanded from macro 'CSS_FRAME_FORMAT_NV21'
#define CSS_FRAME_FORMAT_NV21           CSS_ID(CSS_FRAME_FORMAT_NV21)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:68:1: note: expanded from here
IA_CSS_FRAME_FORMAT_NV21
^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:65: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
        ~                                                              ^~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:99:32: note: expanded from macro 'CSS_FRAME_FORMAT_NV12'
#define CSS_FRAME_FORMAT_NV12           CSS_ID(CSS_FRAME_FORMAT_NV12)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:67:1: note: expanded from here
IA_CSS_FRAME_FORMAT_NV12
^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
        ~                                    ^~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:99:32: note: expanded from macro 'CSS_FRAME_FORMAT_NV12'
#define CSS_FRAME_FORMAT_NV12           CSS_ID(CSS_FRAME_FORMAT_NV12)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:66:1: note: expanded from here
IA_CSS_FRAME_FORMAT_NV12
^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:47:34: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
        ~                               ^~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat.h:118:35: note: expanded from macro 'CSS_FRAME_FORMAT_BINARY_8'
#define CSS_FRAME_FORMAT_BINARY_8       CSS_ID(CSS_FRAME_FORMAT_BINARY_8)
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
#define CSS_ID(val)     (IA_ ## val)
                         ^~~~~~~~~~
<scratch space>:65:1: note: expanded from here
IA_CSS_FRAME_FORMAT_BINARY_8
^~~~~~~~~~~~~~~~~~~~~~~~~~~~
5 warnings generated.

Please let me know if there are any comments, cheers!
Nathan


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527071150.3381228-1-natechancellor%40gmail.com.
