Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDOASLZQKGQELAWBRPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B2A17D23F
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 08:34:38 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id z8sf823477otm.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Mar 2020 23:34:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583652877; cv=pass;
        d=google.com; s=arc-20160816;
        b=JbDM9UnlRVegsSlV0OW5gsvWrz0RyIojUpbx/pM7CnkKYqAsddc+rljGDjuUvQ/SDO
         hoo/ujRzmzOZ0Mh1CKIUQdLymIJLKxvW+rdvNuTpSenChNhk/Fi0Vxy3xOHxsY+WWHWM
         tosOioCko/qwpU8yfzsfV1w253+CgZz0aqQD5n10QFFt5GtxFcCATu88LuqUAGAKiFis
         YQSZto9moIJUqEO1+XpY/hW5jtb+fLSZBmRa5LLDEhBoHDSUaTesu1l1rJ5JQE23sP+C
         kdPNUIk9YKG8g43m074VJHHX7dYHF4UFDrWAqoyr5kup4u6Zpf8xmsVDULBiImrVC3Xt
         RE0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=mCzi+PmBMwQcKFHkwDeZIrIN+EeT7McFlgaBU0P8Yms=;
        b=F963w21HVeRmXRvRyPnI05Ea0LZk9z7AMzyviug7oNmoFYdojjBZ5MAChYydkiu2/V
         D6KbbwUk3XXUUIvl43BzuOZVJv1eKNNZhtqwDEmhcmiNQj1iU7a3nrmDUMJDOUqfNCJ3
         YBosnJ9gtM6INJkO0D4RH7yC72wOz0Cg56U8I/c/VnmEcEK5jKthi/fNeQng7a5CHaTZ
         jpqMEVsOU21dl4lMa1UwuMMfgQIiblI1oJ0m1VQfbSa9iiusXWlfyfWuPfMGU6iiuXQb
         YRxjmAwBqlPOComTto//1bCfXtmAU4zDg3+P/cB+rOro176oAmm9JQR2FcUEUM3uA85v
         mJqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=igl0JmZv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mCzi+PmBMwQcKFHkwDeZIrIN+EeT7McFlgaBU0P8Yms=;
        b=JsnfnyXrFbTngt7jF+TZ6p4Xb6VKnskixCbuliZnYwziDepPzl/2n49kRVmO+cbyf4
         7hy1aHwO17T554fPihV3FozRH0IdUDPInUCVtrOK8IMZJqNkgXGs/a8rVy6IEocBd1vg
         XRzW/6XfRPubZ9NV6NzEyjFbx/twXcSvZE6b6zxrtLMVTFrCQCKPjZ83s1kHtgCIJ4WB
         1IkakDFEaovTrhLfGTXfn2ZChTRaK7ikj0iyX1CN62FFrNAovk0iO9ujh3/0308xoZBq
         E5RL/SBlLc/E75uUyD3ijHExFF+U/OLi4TQXW+rgdryXkV3jwTjyDjKZqslUvK9xjQQV
         yQ9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mCzi+PmBMwQcKFHkwDeZIrIN+EeT7McFlgaBU0P8Yms=;
        b=saHQjpIWxtz//R+aqRH2USVfssFTTGms930/hgso4+FxOxaowCa4gMy2UvuEwg1zb2
         GAJiczHqMcvblbMW6afF5soE2qcWZqFi4WuhuMwCjcDiRsw+hgL/V5VBKgeRnM/Tqk31
         uC5BHDQajTmRGAHTgw8/ngEDEXb5kz1urgRcci1nEcEoWI4J3VU+f0O+Fpl36BHgJqV/
         8/Yq6ozwLTFsUN1atyLufZWwxeGGsH1R8uTidcSp6IF+UeyEQ2pTkX2on6i0+yXjAn1D
         pVubC2HOYvuR5DweVO7ZQKgQOFUaj0HFqIUUEsuNGtNiqV5MLBMuwuIvp+7Ipid6ykaK
         S+zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mCzi+PmBMwQcKFHkwDeZIrIN+EeT7McFlgaBU0P8Yms=;
        b=Ljycmil0CgRaRnfk38C8ESq878ppZj/ZnyNp7XKKz0FF2QnfAfoiB/jF02HDYrRgzO
         m05btwUZ2+JVvk6g9Vrrgux6d61EWhzz1D8NRMlwe5+qh1HpjecJjpfIVhuMHA65TZ4v
         lPFwUCWVKl2pfTqmdN5CsWIbZphjS/xd0Y3VN6uhnZao+idv4y98OJQ9/TAb3jZtmDe8
         EShTGmafIParkOdiIlL8MLRmlmfEyQoM+/R2J5UkWX7DnIqctCziF/X8tQMkpFPIgX4T
         pohrd8s59VWhiXWWPs/10bNt2ZTsyamvjjndxal82GnuRkU5bu8bMU77peyfcHkPFWru
         jBOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1AbwevgvIYN6oi6xupAp+ExueUhmfm1Hm2/ehK5nUIx8k+eq5G
	+uu6NQ4/cRkJmEFiEsB9DlU=
X-Google-Smtp-Source: ADFU+vsq6Glax1z3gq7ZKGnQ0RtNP1EdoTaTr3UoLYA8VN1TQE/Tk+/yXo6vaqaTBXPQ1tptOT0Asw==
X-Received: by 2002:a05:6830:18f7:: with SMTP id d23mr9092267otf.369.1583652877691;
        Sat, 07 Mar 2020 23:34:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7289:: with SMTP id t9ls2125637otj.3.gmail; Sat, 07 Mar
 2020 23:34:37 -0800 (PST)
X-Received: by 2002:a9d:64ca:: with SMTP id n10mr8992500otl.325.1583652877327;
        Sat, 07 Mar 2020 23:34:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583652877; cv=none;
        d=google.com; s=arc-20160816;
        b=vH2o2NQkYXTjOtFIACbq0gX+SNVDIE1WmdutzqnBUraaCUrJ4GFMMtof99jNEpiVrg
         dQZeOFVdtrWzgRh1DB/r2TYRRqh4ypzNZ2bFxmH4pZHrPkBrsKV8OJddV7KhoVwikAJc
         rc+cwwCOVJTU33VeMuekX4XpfedmzkKUVi9xyjCxqMeZXkINem2rgHxgCqAlGA3x58V8
         Rd8YVklXPJn3IlLnr8qU1Dqsi+AYDJcu8yOKpFV4hqDW4/rmvN98sta9mjMgyJMfPL8L
         sYYCrza7NrD01LdUv9+QMYulhWA+E+4myypUoYcHiLQzNcOn3fy6WloBFWxIMAfHz+7g
         tp8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kZXL8stbtWpHPkKS7EK+cyY0hozJba2aSAxakIiEy5g=;
        b=yHDpLLhDj336/lekLk/bi2rctHANP2QGp6CowJs3LL5v3hO4kbYRHDFU7Pheo5aDrF
         J0xdbUjCvtmKYkOdPvd9MUoPqS32QYVqHH3UMVNQn2mw6YMHB5LBYctc578yvgWyNRs7
         UPJKRfZRRhF4Jek/yKkg/YYnhjcHtTefsJtpW8iiNUWuF0z2FbJAz0OBT1Oz9inZ2/a0
         jgDtLXHN/toiyhwd6c+dkPHTK1aboN3GdP8zrfJ/PKIW6x/AHrGqeV/+UTIdhCSaO2Ix
         GxmhvEYjZfZmaWYfiK80vYSNsKXJ/e1+guv7D1ILk01FGsgF7HoUC/inDqpWTq3lZT1S
         arOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=igl0JmZv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id b1si413614ots.2.2020.03.07.23.34.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 23:34:37 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 111so2253571oth.13
        for <clang-built-linux@googlegroups.com>; Sat, 07 Mar 2020 23:34:37 -0800 (PST)
X-Received: by 2002:a05:6830:19:: with SMTP id c25mr8515454otp.349.1583652876964;
        Sat, 07 Mar 2020 23:34:36 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 2sm12812677otj.41.2020.03.07.23.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2020 23:34:36 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] kbuild: Disable -Wpointer-to-enum-cast
Date: Sun,  8 Mar 2020 00:34:00 -0700
Message-Id: <20200308073400.23398-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=igl0JmZv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang's -Wpointer-to-int-cast deviates from GCC in that it warns when
casting to enums. The kernel does this in certain places, such as device
tree matches to set the version of the device being used, which allows
the kernel to avoid using a gigantic union.

https://elixir.bootlin.com/linux/v5.5.8/source/drivers/ata/ahci_brcm.c#L428
https://elixir.bootlin.com/linux/v5.5.8/source/drivers/ata/ahci_brcm.c#L402
https://elixir.bootlin.com/linux/v5.5.8/source/include/linux/mod_devicetable.h#L264

To avoid a ton of false positive warnings, disable this particular part
of the warning, which has been split off into a separate diagnostic so
that the entire warning does not need to be turned off for clang.

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/887
Link: https://github.com/llvm/llvm-project/commit/2a41b31fcdfcb67ab7038fc2ffb606fd50b83a84
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Makefile b/Makefile
index 86035d866f2c..90e56d5657c9 100644
--- a/Makefile
+++ b/Makefile
@@ -748,6 +748,10 @@ KBUILD_CFLAGS += -Wno-tautological-compare
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.
 # See modpost pattern 2
 KBUILD_CFLAGS += -mno-global-merge
+# clang's -Wpointer-to-int-cast warns when casting to enums, which does not match GCC.
+# Disable that part of the warning because it is very noisy across the kernel and does
+# not point out any real bugs.
+KBUILD_CFLAGS += $(call cc-disable-warning, pointer-to-enum-cast)
 else
 
 # These warnings generated too much noise in a regular build.
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200308073400.23398-1-natechancellor%40gmail.com.
