Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYNB6SBAMGQEL2574BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D23349C5C
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 23:38:26 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id c131sf4912613qkg.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 15:38:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616711905; cv=pass;
        d=google.com; s=arc-20160816;
        b=c7ZYCXV9vnww2blR6zK8GTo5gQTb2uh+hLB+0/f3dLcCGmWzrCpkoOwZVjv//1V6ej
         +bPIAAeX1MKtnxYNuQp70l2ZQzSVfDIq9zdpYJLP86yzY5MOI9behaBbacsDbeos+pL+
         64maPVEbKq7IoqMgrG8+Y2EIj66VOc1aSf3f1o6HknffaKAGJ1/7IS59JOez92bPSodU
         ctBXhadGFendxdajkFJY4z4EPmDc3Gyok6kpTOxPXBFPAL+UOO1ORAvWyCdCbCY2Gakm
         G7jibEKmhd5P1W6VsnPOb+hBp+TaPCxYy5Vq7s3w35EkxaBzZdXmnWixtwnSHSUF0eVa
         HURQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Cklawp3foyr09kFK6MCtIQGfWxNIZB71HjI1jIBwKj8=;
        b=Ojrbc+AS1duKBd0WY2ox/kOSvpKmxgT/DoJcHnffJY9wQBD22uCIpHbaPgPqxA9Im8
         ig9p7b3NFHGqA42o4kjJcjw9/yp82NQ6o+CAnskbf+h0rdayVP5H0f7Oy6YNeDn/a2RW
         Ev2c1pnFLbPGb/XYBjkHwuT3NOQCoy5ixxyRSbzquAmKm1d1SzMsDPV0aaMNfT7aRx5d
         LYd4+pTX0StV2Nu11bY5HA76i+XHML0PLD6E9AnYFfdiDKVYAfpnKXUE3CBHEXemzSoS
         Duq7t4HmHg0UBGSKVQs0rq/HcAYyD5XF2hdAlkvK+aWHKBZKKacYoSiXJ9KYTAEXjA7B
         R3Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=S9zGop5F;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cklawp3foyr09kFK6MCtIQGfWxNIZB71HjI1jIBwKj8=;
        b=j50tf38xSGi4kpcs2UqVFDQAT0tHNnAhJKdfV0qQALEHVFcOPY3oxqiWJZh9ou+Mv9
         fMur9nGuXbr6KE8HwFXO+dB3sSh11foI7Yyh1OPZETMhE8IbQiNlpYLV77HYK4w4bmMc
         wJLNWDggyJFGqshPlNu+jyYB61B5lQfpmUil9/uhkvnSgBtMppTxfIwOBg2uT3NdFW3R
         PJAtkjgSDVGbo+5tnQeF+yjWk6VOufd7dhb8di1jLCHBh859xh50y8zrzPoYC3WqzRFK
         hf0s7AVbiDLAsWIOovDKRFVMoHWe2gz1poex9k8Cf7XpmlC9DHctTVn2wK++qSHDeK+f
         efNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cklawp3foyr09kFK6MCtIQGfWxNIZB71HjI1jIBwKj8=;
        b=jLr2tq4iQkfefc7VOk0I5ETziDUjpwlU8h6HgbgiQ665WeowNRw+rwZGYEJvFzepfm
         hO7J9Qw0HdRj0ouRV+Bp48izf94ASf7RTH97vwng/g+uTpq37H1HquQKNp278uM3uVOw
         up7MoiyPe4qC9qYGd3lJebVFtLF16D5bRYX/Qx+9Q2lm0HmtCugjHGIwkQy+UeaYDjqb
         sp2RbHhl4wLneQyHyraM63SlpZhvhkxl6UCVUpw3lXkOUBGEvexY7tz90Z7/8MziXWyO
         CmJK9Fk++MdH43T+Qi3SfxhxhGkdBj3ARtGdOYisBMc2LKJtXWuTSlgY0NXP8Ns5HxL5
         y1tA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304iTJYoM8k5dLyjEe2PYCBKPcxCoCa2lcHmWuez6NN4i0iCoqZ
	5azNre2dNlXwQNsh56i8V9k=
X-Google-Smtp-Source: ABdhPJwUcqWEWi50HFuiOLETdd2nSccIdKfj0iAZ55nN8scvQjiTWu7KrkWHYm+qY+sDyoF662UNTg==
X-Received: by 2002:ac8:590b:: with SMTP id 11mr9674222qty.205.1616711905393;
        Thu, 25 Mar 2021 15:38:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e82:: with SMTP id 2ls2616916qtp.2.gmail; Thu, 25 Mar
 2021 15:38:25 -0700 (PDT)
X-Received: by 2002:ac8:4d4b:: with SMTP id x11mr9891712qtv.133.1616711904980;
        Thu, 25 Mar 2021 15:38:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616711904; cv=none;
        d=google.com; s=arc-20160816;
        b=FEzaQYMP8vJ0YbkqrD1kXHd+C0j18BKZruxZGn2poce/SVSN86gHNz4fpG9U+E7ZKx
         51ksrB6RobrkJkPDZA8SVfIqawEM0p39WsX3Q1js5wN/T6AmU85e/ZvwjuGmGr/A8rIw
         k4A28FzjpMGxqQ7d1snwFtls1gnIrCpZHldRWGhQ6sFvbbcj2vt6HjFS/AedSbAPfVH0
         sEF3X8AlIculHanh4yXNUayH0gG1FY+BC3cFhV4IUYbKHH0hmEl8GKD0lLGLUemfph9+
         JSxpOGEtutHPzgmGWO6Az5E5hxy13kbimJpVEnXNbWUVPytMTAcJKXccqD71tVYfXk0L
         CPXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=4VnSn4JzR4Q+mLFvENUPrBC24IMGJ1sf6xhSdsjItsI=;
        b=NShAy7lWyeE6shDtP5h360/bOLhPYsW530BVTqYmA4w5TrqsQAu1KpX2eM8O5sUz9R
         ZABVsdNwTAzng8P20uxdx1canln/vFgDjLlNozfash+PCtoCS+BtX7pjWDKyns3MLZjH
         kf/oEDZw5F+wBWj33q037Ujj4FE1Lt+CM4geNAgK0BNIRDLB8K9y0OvKSIp3b15jXrQo
         w2OMXxiLTt8VENJc3kjyVDQi5D3lSZtUcOro1WpzIoBURI0J1vrtSKYKi4s5brGxZJXq
         55z22cOi4xhZRxnncUQYWQ3AJp00Ij1DNc8otZ8KtE3Cf2cXPMGCbvgNqZ73oAoAmHcP
         EkUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=S9zGop5F;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r24si437500qtp.1.2021.03.25.15.38.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 15:38:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4A0E661A3A;
	Thu, 25 Mar 2021 22:38:22 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 0/3] Fix CONFIG_FUNCTION_TRACER with clang
Date: Thu, 25 Mar 2021 15:38:04 -0700
Message-Id: <20210325223807.2423265-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=S9zGop5F;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Hi all,

This series fixes function tracing with clang.

Patch 1 adjusts the mcount regex in scripts/recordmcount.pl to handle
the presence of PLT relocations, which happen with clang. Without this,
the mcount_loc section will not be created properly.

Patch 2 adds a workaround for clang less than 13.0.0 in relation to the
mcount symbol name, which was "mcount" rather than "_mcount". This was
written as a separate patch so that it can be reverted when the minimum
clang version is bumped to clang 13.0.0.

Patch 3 avoids a build error when -fpatchable-function-entry is not
available, which is the case with clang less than 13.0.0. This will make
dynamic ftrace unavailable but all of the other function tracing should
work due to the prescence of the previous patch.

I am hoping this series can go in as fixes for 5.12, due to patch 3, but
if not, they can always be backported (patches 1 and 2 are already
marked for stable).

This series has been build tested with gcc-8 through gcc-10 and clang-11
through clang-13 with defconfig and nommu_virt_defconfig plus
CONFIG_FTRACE=y and CONFIG_FUNCTION_TRACER=y then boot tested under
QEMU.

Cheers,
Nathan

Nathan Chancellor (3):
  scripts/recordmcount.pl: Fix RISC-V regex for clang
  riscv: Workaround mcount name prior to clang-13
  riscv: Select HAVE_DYNAMIC_FTRACE when -fpatchable-function-entry is
    available

 arch/riscv/Kconfig              |  2 +-
 arch/riscv/include/asm/ftrace.h | 14 ++++++++++++--
 arch/riscv/kernel/mcount.S      | 10 +++++-----
 scripts/recordmcount.pl         |  2 +-
 4 files changed, 19 insertions(+), 9 deletions(-)

-- 
2.31.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325223807.2423265-1-nathan%40kernel.org.
