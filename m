Return-Path: <clang-built-linux+bncBAABBSHE5DZQKGQEWCARCKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA521915EC
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 17:16:10 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id z9sf12273439pln.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:16:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585066569; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uq96JuhLiDNjFKwJv4E2w4XikFrPRRXKd9TvS27ZvL/uLZ0nGP+YPalpufRViTV2fi
         9Q4IWvWiz998HwtInAlAuYJictyWx6rvpjwir42t9yqkRo2ZOGGyQBhHQ4w5gZoKC/Ny
         d9ax6Fpz0LoaPqJWNOGYNFnMQdN7NkTFV02Qrs/tSVBrJFvIwBMED1KpFaVyKCbk/Bt6
         ZWmG5B4LW2vLo4kKa0JffXidhaO7utW3eSX6Sc7PZ0LOEZVKtRBrbwmtRDaDhVictfvY
         puSD7A6mIlBu2FxiJfOhbEyPNNnCbCdcHxc9Lx3bf9PF5TZb3iE+TLFuBIVjkXmZqR5r
         XzOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=7RH+WLMsEFtS4COHt3GQC7Mj5YNBzzG/ILnexa+3/HA=;
        b=WhlHDsYffz1gYfgzNANEJc3MftE+xa1dx49aSaVJWd4MOVsk40++ImfO98J0zjIVhu
         NxbCC22kwHBlHGMC3KaaPkHT6/m13FpJ7DYMWCasmY+eShz0TFxBSHjPIC9QUKNprEcE
         8urTviNIUzfiPYikkSZJ4Cd0MHq1AhF15AG/yZ3yxallDvlY+9cHI4k/a2Yzr2Hl9XoD
         J3BNa5utuM5QxU2eTEsXw7enhAaJImFjQ81Q6QWWb0hqDV52DoG2eaRmNPipZ1FwQYNP
         adbwrYyf84shdHmYiGnVZREK1Fs8AvZntP8FCC1Q2wcoGaYGYGCeGJVmvjM/nssjGU+e
         RXnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=CEHzMjUY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7RH+WLMsEFtS4COHt3GQC7Mj5YNBzzG/ILnexa+3/HA=;
        b=Al0L4vqqpW807/FbQ7zQjPdF6XDyyhX9J50Ig/4EipTKNJDHOjB/lQMutg4jvVAtDn
         qaqfSkzKMWJECoI4XHVVlrSirkU9dQdlKGtmNnee8dw8FNZ0HP+B2ELMXr/B/yRAzaUd
         dRprjycfmQNZYaxjX7DbWkD2N4Z+owHbxlLHAXBTs0ZkCm3vWhkVSlCaKZCL11adWcJ1
         meSH0mSqykO5XiW+7PGXD5cDTKYqNfZplcdvvzHHWKKPsKV+S5YN2vgemVNF2EqnMKlS
         4ye9alVybUu0yssFoob5/GWp4k5PdygCb4yGT1OWQoVmJnz6a3yaL7plKJbISoV7FCV/
         QJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7RH+WLMsEFtS4COHt3GQC7Mj5YNBzzG/ILnexa+3/HA=;
        b=d2YfoX6KvcRfTrrzmCP0Ky+15X3M63p8lH5mo1yNkvHtITWueos2WBWdoHLbJpBdh1
         a4YujCOaESRgfvEFdogsuDdVCaQYzJNK/qMeFsWDzLEdfJjEFCE2BTfYHvQFWG1hhg6Q
         NAxDV4JKNG/BPnGms4p4KsbTIJWvA4k11p+r8k0vWAIr1R3Ykik+UywNo5OmFzgxJC0b
         oaL6dspNQTQxNu+sSWX3DuQpZGKhn9DWDB2pJqMa2ChJYzob/UGWqAyik9utWE/xqadK
         f2FwOkx+MeKkoB1z5cOkSO9WxdGD12EMuAhnpUYjhKjJY32x9dxwvHBWU0PyfCQ3Ca5Q
         lRFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0hUsEo4EQabumPWgT8RePVBAZl/m5wspBFkUjkyqwdwzQl6Umt
	WMHYuFqoWmHOnw4T34IRRVQ=
X-Google-Smtp-Source: ADFU+vtD0bYfL9qiS6WqKsq2Lf46unCjsI3HR/tceear/HG3X8E+rbngS31Mpn5v1YYHBpCL47yWlg==
X-Received: by 2002:a17:90a:e003:: with SMTP id u3mr4549715pjy.157.1585066568786;
        Tue, 24 Mar 2020 09:16:08 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:245:: with SMTP id fz5ls2014392pjb.3.canary-gmail;
 Tue, 24 Mar 2020 09:16:08 -0700 (PDT)
X-Received: by 2002:a17:90b:3645:: with SMTP id nh5mr4106487pjb.104.1585066568426;
        Tue, 24 Mar 2020 09:16:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585066568; cv=none;
        d=google.com; s=arc-20160816;
        b=yo1viwITlMEcvl5tcY0dSKEIqLLzpjkbbu7p2CkOJBFnJoH9iPLnVapdewUQ6H2kok
         QCnUF4lPx/gYK2yYHXNk0Vqouh7y1vLcEnEpSsUhgi7ZhNKjPUk8fdygHJzb16wGMYZR
         XA49ap4QNNyUh/SRWWgLxP/uh3mkfmxSzwCD6+u4Y6A+JMg1M4AFt9k4z81ovCxyFdfH
         omduhS9Bn8U2hcp0IFlU60QZrFV1U13MYTI1ZrtmGR+Q0f7Qxq2U+xenUC8qCHYcOC+F
         XTD47VOpA5JhmMOPpfHF1vjBeBWFgDDh9P1qHrBXRaDH22SROkzo19dgiZU5VeAFa1PW
         /B+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=iERwpFIUsMeWrqbzCfka8i/KOvDD+eMi426uZLpMpHs=;
        b=p7TkA0IB7w9L/LJ8cBs6xu3ulnU/c6U/mE5nxGQvfymDAN3YOZq1fci2WMKA4FNF3N
         1kdDlEhGwRDh2XE69O2BWC1+sjrl4SzCZtxpE66lkmFJan6Q96SR7AMdU1Ar7MoGDPmn
         swIy6ij2LISNrJppfo+D7Qv7QUcXdt5MhDTM1SalpTm2+OWIuP1TezP66QfdTSs9ShcH
         Ml4W0bvD7JeYDQJIJakiRnStS2QSwb4EVc5KVmXfCRKn5gdFhjMMN5WdHystUjZkVkqV
         YKnmqSa/z60+2RRVqll9p/iUVN383773F4YdEHvxFvjP0hV0CjDFl3LP9P8uufoDozrF
         s//Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=CEHzMjUY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id 138si420997pfa.6.2020.03.24.09.16.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:16:08 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02OGFgQb015903;
	Wed, 25 Mar 2020 01:15:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02OGFgQb015903
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 3/3] kbuild: remove AS variable
Date: Wed, 25 Mar 2020 01:15:39 +0900
Message-Id: <20200324161539.7538-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324161539.7538-1-masahiroy@kernel.org>
References: <20200324161539.7538-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=CEHzMjUY;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

As commit 5ef872636ca7 ("kbuild: get rid of misleading $(AS) from
documents") noted, we rarely use $(AS) in the kernel build.

Now that the only/last user of $(AS) in drivers/net/wan/Makefile was
converted to $(CC), $(AS) is no longer used in the build process.

You can still pass in AS=clang, which is just a switch to turn on
the LLVM integrated assembler.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 16d8271192d1..339e8c51a10b 100644
--- a/Makefile
+++ b/Makefile
@@ -405,7 +405,6 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
 # Make variables (CC, etc...)
-AS		= $(CROSS_COMPILE)as
 LD		= $(CROSS_COMPILE)ld
 CC		= $(CROSS_COMPILE)gcc
 CPP		= $(CC) -E
@@ -472,7 +471,7 @@ KBUILD_LDFLAGS :=
 GCC_PLUGINS_CFLAGS :=
 CLANG_FLAGS :=
 
-export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
+export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
 export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324161539.7538-3-masahiroy%40kernel.org.
