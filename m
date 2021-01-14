Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN5D737QKGQEFGWX3IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id B635A2F559C
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 01:35:04 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id i13sf2966778qtp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 16:35:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610584503; cv=pass;
        d=google.com; s=arc-20160816;
        b=vBl6WsUDIbiYwOgOi73r2oDIK03kMdoHb4E/GUZj7nSKB2B2T370uaH/XBq8dyTsf1
         czB0SrBeb+MDZzHOFo3TfSn5tP0uuBQARFMlarakUTghfZWK/AkijDq5skqoPJl1AprU
         nTtGBjiK5daO1Wu+Z/CPFp3TEn6T4JoBmMxYBryJzndUPIyKaasDnc5ixyn+UeXZvv0K
         PZJZW0DmQgOi0iiOAo9QIlRbxD/5/rFES+AxDCaTrYI2kMfjcL12dh5MVseW2kUJHXOm
         0fKthtMscFjdvv7XCXrbbvaEvFlSUmVcQapVDHJAcd7E5OtMS7EqXtbNdFV3kaIg3aFr
         PEYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=uMQgu4CnC8dLfRBuP2nKtrKeTOrNORD0/1Oln3AyeCM=;
        b=Mcqc8Hi/u+g0zXWk4j6nMvMkQy/UnwtZqv70bd8XeU8u9nhW5liecdGJ2elsUGMTGT
         UnQ4Dlr5kkE0TqDhI5Dhw2ixviKDlRYF5Y3LSDDA7esGZTIvWcI2ZwWIaiBNCO6owE1s
         KPhtm32nYRFY3QdOOZN+oi1nlAEYAhSP9zpjYRR4Z1xrmYiVKs8K+hhHTpbIzn7DzsMo
         8JZKzAVl/g5hXs7unKXocSv1Qudib5C2wW1tLR2G4ZrO5JWinXiSuYLE+Xl+XI4bK62P
         +UKuku8vXiGq/90ki5UnZbpaexak44XwDzQd1pF0FGbcoRCQ8ioa+oKfzWf+V+pl2RLP
         Qo8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QuGjfVfi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uMQgu4CnC8dLfRBuP2nKtrKeTOrNORD0/1Oln3AyeCM=;
        b=M7L0rCM2VmYQzvfCr/DSVEh20LoHYOEGCMUKxqNHPYFfVZaJOl78SEN3gM/20GXKrJ
         ztV7fzp18SxanzxeWeD6WulDyE6fP1gBMhIIGpC4+rW5/WIoPhU2KxhVW6sXjgGCBIgS
         0g2aDBfFTCzP7Tdx0tjg1OBejcLUVudBrFGcrq+bOXVd/Z1t6gLeranQcv7IpmFWrE1T
         Gk9vP3nFRntPgNaXm0jIqTaJ5mMmdoby1m3Gn6WbYYZYYls3LfkF7m5UWvqftgjP4GtG
         ApdIlVXCAXnp0YylcbYGsW2blDjF4XgSbn2GAI0WRsjqbiAIJvpVDyU6xXa1/GRaAP5V
         y83A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uMQgu4CnC8dLfRBuP2nKtrKeTOrNORD0/1Oln3AyeCM=;
        b=Lp3Owk6G6yvCWso9p3elDq/klTi6YyFQnzbG5BSyHNW6x+L/hDei6MgYFpyyZJniq7
         P68YRjBbGrfFbxlAjdVgECJgu7/mfheJeme9ZOmT/462V9CgphjLLIMCQUnGfQnAFsKD
         iP/HYub/A/eyzSHyG4VQ1o0V84VE9s6zRnQ/foB52CAa0DkTDw8TMkiMc3ms/854RJQL
         qEe3O0m5mqs4QRJYdayxFxaDex4fRyvhsTD51cnrM7rAA+5jfYn6Q1vLSRwfbox4RwND
         sKGB2GypUzAaRIH7a7epZGfkBOoMZvsqS/YbeV1rVDVmv2kzWqSim7W+qrpWSl6NJQIE
         5r8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uMQgu4CnC8dLfRBuP2nKtrKeTOrNORD0/1Oln3AyeCM=;
        b=CJRcz82vA/om3NbrsQBpD4Q6NhMaeHUP0CCqj99OQh6MRwhTp2wd1h51CtCYdycFx9
         Tk+2MOQqPnQXiMfzVspvEAIDl6mtdrZa19sAy0gSQ4Yct3+NNrQtvR0FdMLZntnXYUki
         W5WYVYMbzs1pYfj+BgueugHJn6yF9WJdEjtBxK2YBv6aBhal4eekwVypcb089X421KNH
         aYaHtF57nikiqexxYrPgNavLb9X4GPPdFRWLhAHR5AOOUhDn4yMjEY5+ucBEX9czmFHK
         4a5mv3ALTwtUnnViUUrmiIaAy7yIigoHMI5Kfu12k8ugAwT+xi1SIqrfdQnuvIZ8dE2U
         BWgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HhWodbO2uciYCPE/f2/Uoj0XAncpoMd9N9uHxViUiSwee2JbP
	ZscGkRrXw4qU9IIarlLVEKk=
X-Google-Smtp-Source: ABdhPJzYXLzeAmBudLVkYuAtUeN+/sUPzK5lBf7+0tWTDwERJnTbYGHyPYdx4l8rXVkzt1xQWqstqg==
X-Received: by 2002:a05:6214:1764:: with SMTP id et4mr5088621qvb.2.1610584503783;
        Wed, 13 Jan 2021 16:35:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:26c6:: with SMTP id q64ls1506242qtd.6.gmail; Wed, 13 Jan
 2021 16:35:03 -0800 (PST)
X-Received: by 2002:ac8:6659:: with SMTP id j25mr4938790qtp.322.1610584503360;
        Wed, 13 Jan 2021 16:35:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610584503; cv=none;
        d=google.com; s=arc-20160816;
        b=EE8+Wvv2AaPWh/NWDmrV1bjgR+AvoUXOqXD5d7yuDYMNuX+2p6hhobA+JvtUn88krB
         dGeL7/o0NFwpST+7s9ds1t/oEVs+J91fdGRYX0jh6X5E6LBsNmtVTjkmxAUJMN5wbtPR
         kMwQPlKudgcu+hInPjDZuRCPJcjxiU+1eLn8WdpiFaJ+xfSeAJRBUX5PVNzwcXS8YK+9
         q8LX7lTC10NR95mxu0sGb49ym+LNoATB2+Z/0nFh8Ho5k/R04H0USqHBJ767bUCgE4S0
         Fkg29h2u05MbVvqaG8F7C7IHjm317n0JJ+isbpZmCKk1RX7IUZVljk0/4cLZO6SAN1O5
         QBjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9a07HwA8hrHoGWjqCa9LIGmpHo9wPiO5hANO4XpbneU=;
        b=hqO2LiqxtutzoBADEIQK3/Dluzh0T1TnwhIsjnRWkdqGwMFELpmi5x2XfwzXnjIPYb
         +eH5ERls5SoGDNFwVyKblBeyo77NaTkwqqB3ysI5qZMLJ/m85yqAEF1WyKwFnZwXqShi
         vpk8M5DiLkkBWpLESHYiqUPPW8WCI3Ty2S0pEWra8vTXyb22nblP4V4w2nNcv146QeyP
         cxp2fsX5lv75yRgDK0nqf5tcivkBOnAY/eEw2Xv3UGXQ0dUuxFuNIV6r6kTdwNfnLwJP
         AiwOAvKSeEgW76bYA1FvUIYL7boWkafGY0vSm/giiwocO8qP5I+9IBlQzO64iwDha/1Y
         Xeig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QuGjfVfi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id b7si212726qkk.5.2021.01.13.16.35.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 16:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id 30so2593977pgr.6
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 16:35:03 -0800 (PST)
X-Received: by 2002:a62:7651:0:b029:1a5:929b:1681 with SMTP id r78-20020a6276510000b02901a5929b1681mr4709294pfc.27.1610584502401;
        Wed, 13 Jan 2021 16:35:02 -0800 (PST)
Received: from Ryzen-9-3900X.localdomain (ip68-104-204-241.ph.ph.cox.net. [68.104.204.241])
        by smtp.gmail.com with ESMTPSA id 82sm3667890pfv.117.2021.01.13.16.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 16:35:01 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>
Cc: clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>
Subject: [PATCH] Documentation/llvm: Add a section about supported architectures
Date: Wed, 13 Jan 2021 17:34:47 -0700
Message-Id: <20210114003447.7363-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QuGjfVfi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

The most common question around building the Linux kernel with clang is
"does it work?" and the answer has always been "it depends on your
architecture, configuration, and LLVM version" with no hard answers for
users wanting to experiment. LLVM support has significantly improved
over the past couple of years, resulting in more architectures and
configurations supported, and continuous integration has made it easier
to see what works and what does not.

Add a section that goes over what architectures are supported in the
current kernel version, how they should be built (with just clang or the
LLVM utilities as well), and the level of support they receive. This
will make it easier for people to try out building their kernel with
LLVM and reporting issues that come about from it.

Suggested-by: Miguel Ojeda <ojeda@kernel.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 Documentation/kbuild/llvm.rst | 44 +++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index 21c847890d03..b18401d2ba82 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -63,6 +63,50 @@ They can be enabled individually. The full list of the parameters: ::
 Currently, the integrated assembler is disabled by default. You can pass
 ``LLVM_IAS=1`` to enable it.
 
+Supported Architectures
+-----------------------
+
+LLVM does not target all of the architectures that Linux supports and
+just because a target is supported in LLVM does not mean that the kernel
+will build or work without any issues. Below is a general summary of
+architectures that currently work with ``CC=clang`` or ``LLVM=1``. Level
+of support corresponds to "S" values in the MAINTAINERS files. If an
+architecture is not present, it either means that LLVM does not target
+it or there are known issues. Using the latest stable version of LLVM or
+even the development tree will generally yield the best results.
+An architecture's ``defconfig`` is generally expected to work well,
+certain configurations may have problems that have not been uncovered
+yet. Bug reports are always welcome at the issue tracker below!
+
+.. list-table::
+   :widths: 10 10 10
+   :header-rows: 1
+
+   * - Architecture
+     - Level of support
+     - ``make`` command
+   * - arm
+     - Supported
+     - ``LLVM=1``
+   * - arm64
+     - Supported
+     - ``LLVM=1``
+   * - mips
+     - Maintained
+     - ``CC=clang``
+   * - powerpc
+     - Maintained
+     - ``CC=clang``
+   * - riscv
+     - Maintained
+     - ``CC=clang``
+   * - s390
+     - Maintained
+     - ``CC=clang``
+   * - x86
+     - Supported
+     - ``LLVM=1``
+
 Getting Help
 ------------
 

base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114003447.7363-1-natechancellor%40gmail.com.
