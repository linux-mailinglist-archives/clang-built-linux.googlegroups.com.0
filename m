Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZX5UTZQKGQEUFT2HNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E591822AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 20:41:28 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id 60sf1897200otp.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 12:41:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583955687; cv=pass;
        d=google.com; s=arc-20160816;
        b=gW3g9GpxuoIPKFhlCGuJCgj/zoMrmry+gvinUw1CaAn21fOBMMz9x0+LEs/SrFLYGq
         +qKxXe6dE+S0x7btgfaDhLFIC0BnHqeGO3jHEiF7DIVCm1RTz1GvzaIa0x+rCc4Oq/JQ
         9lDRcWg05n4e49WrpMWlefs/PJawtOI2OukRuJKdcYmq9haeG16ibqoFnnmJtzePyXj3
         GosoFypwFcjb7lrM8MCdZ4Jsh1EYtVZMHJRc3zGO5C8LTxVLFoh0ew9a2Q5t51wIWUsh
         68bhEEnfA56XS8yOLoUQQtnXB5sHkymLyHKeNkKr0AMlGUVFVKcsfeNvrC707yMz10Pj
         Ndow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=wpktDYd3HMoJC5BCFIC3ZT6sRkRuyR4yqyetHaQepAo=;
        b=HIdy5vyvFrfk9PqnlmKqzDwSeJ1Zo0tzZUNqMMV6fFUcqB7HG4f13xOs8oQ0+Oocm3
         W2lEqNMpHJacvlji1HbYJCrtyy999tJD6sBARfFdYiAfnMugz+CoG8O9g1Vw/rtgFHz8
         8YmK5+pJb66tHMINthETuuKWgVIEZ8bShwY3X5FNcyb2kJUo00qpTMvet+zn5FSsCArF
         sdioryVHEU+tA2dKoyL6y85MK0X0ZpipDvokXblQPhL48xKwPh6EKR5HY2pls5Y3sfnA
         9rI7Do1Hy/CXOiijOSz0ZwyWYmignYVaGLN7GyvTHECn4OKurYowscec4TrPO/eRtnsH
         LAAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SehN6XSB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wpktDYd3HMoJC5BCFIC3ZT6sRkRuyR4yqyetHaQepAo=;
        b=DMQ6uvKMeGTE6yRhEHkEkzALxfJm4GPMao1MRfhECsvTBc/wGN8X7uV16RNFU6rw3P
         NRWcAPEB6I0vb+8O5V1NOjhodhMz2WbVVb/f9too56I/1UCxUFVQb9AJsPAbgv3cSRtp
         bNDtmZ85D41rkt0R3EC0h+4X1LnCR3sbsmViuscJ03ZIyQX61O24bi6MsZpu+4HMfeur
         zSuGckyS0w9gB5UZbchrC1k4DQXCb15TUkYSPK/v0Jng45aYYwW80bFWx8CZ7H2+YB3C
         pDHBf48RaHe4JmJ5eqz//8g2xV4E1lWMYpZYBDzJWcRkoLExKNhBIv6gLEuRHDJpbW6y
         jqQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wpktDYd3HMoJC5BCFIC3ZT6sRkRuyR4yqyetHaQepAo=;
        b=YwWAhi/hdTP7UEw5NsHGwpPcGJDKI69v9kzWy093I7AoGWIma4KYsy01ajB+arfcn8
         RNW1Fxh+ebLJ+vUPpnaatK7VhoYTgDzbtUJtWyFGg/NzbKTMeDKFuSrOpmuEo0v3gnar
         XnYOfqtD719rCb/GjTJ5VCP0PB3OD8Y9uldkLe1tl2YboLHO+HnbbdesmfZjdr7UTiQj
         v291ANfVjmjegLPXnGLitSqPm0pT0LjjIYqGZ1fv7213RYQ/kBAYm6cqLureWgHCzl6a
         j/tkJgs1SG0t2m9uTLLdRZBPwG347vBm9cbZC1gPwOj96NVzCYLfDP0hh6QzwwqgHoxS
         NF4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wpktDYd3HMoJC5BCFIC3ZT6sRkRuyR4yqyetHaQepAo=;
        b=NdZVsA2rgynxsiMbVGOtoK4gbMeM+q6eywcR8WRRuDg1Jk4roXd4LtY3o+vw35gv8j
         UHbQY+8zmJn6tPzU0PQE5WZqdgMxjYsxTAl68RrdWUYO22rbTTHSgmr4Xqe/nrVO+vsM
         PPRVypBrMO1vKNRFKdy6fAtH3xhlfOJmmGw+7Nz4HyQaadXarPGt87xyvT6YiVRM4/3t
         TH8RDCLAxZSmXCG6ZHxjSWipiRq2x6KDS3izEwJEAFLSyR6/UULxm+ki5JEd2IISvneK
         1BRAsq7ttA2pnU49rwPTdpAxIRP/1xWMSoTn3+lFrnqLe3Abm+rNxQGUKtcvWZBaQvfd
         vlGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ30fhmqUdjX7Qw49v8oGGHPOvDfKgu97C63WZpx/1DPz/I7WMUk
	9q1mNM5/dmPbJ19XP6w5k8Q=
X-Google-Smtp-Source: ADFU+vsQ2GKx9zO5Xm2V2qP3GLkrZUvEylrF7CXlPBqfWOKUYI7YMiwZA++olr1LjMfYUe720nqKFg==
X-Received: by 2002:a4a:e211:: with SMTP id b17mr1417319oot.79.1583955686977;
        Wed, 11 Mar 2020 12:41:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7a85:: with SMTP id l5ls857575otn.0.gmail; Wed, 11 Mar
 2020 12:41:26 -0700 (PDT)
X-Received: by 2002:a9d:7e8b:: with SMTP id m11mr3673117otp.83.1583955686639;
        Wed, 11 Mar 2020 12:41:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583955686; cv=none;
        d=google.com; s=arc-20160816;
        b=v62eO+atDf7kmxVaCHwfjUrwnFTQhgcrp0PQQkTBzRcRE1mSztPT19MeygjYu45TCR
         YstiTQSIb31YQtXry6Wj3Bq3Id9x5ZoQS0mUOTxVG2CGp0mzQfRDTjRkq7Bs/WngJOpG
         xBK/9FzWSKz/I6uYATw+Xh8uXi/26ONxXNSQjU9wXO4PShEJ/QHGhrlo6P4BApUO3cJJ
         b8sh40Ngec+xyYoG2urafmoc4hg8mkLXTX45HDclncXuZ5RuLg6PiuBdPuf9bo+v5lwX
         LUJL844uLjeRjcYd98xvFrxMboEhOCvOfg3GCIMmYRprs7xYoUtGvMcYZq+oW2NWxAvR
         bLdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dI6sJcdtz7nc50Bt/3fFcsotsOXM7BkdNH0XrYOC1w0=;
        b=R6Nxe94JSRMsX3yK+XmMOjLX3OqZqxJdx2aME5u4BnrDlhzNWZb9j8hPN7MR5+Z6RB
         NE6Tbca34Sn1V41zD3BJccOLUXhILOhVteSWM7vhyFKn43BTJTDizvYxHhrxOn3giSZN
         us6aWcaVJyuXcoWC57IWWZMfNQox6oRpsXceqO006/jI4M05VoainSqBKfj3pVXo/dU7
         G/K4VKLSPlsmtI2Gx7VEDMIKR4VJs14bvwZx4He/qgEodMpoXKPjcFbtG308QcipIdyP
         o2h5u4SNhpD56iTSXaqck9gfT2VxnXYf9RDTzCWJRuutG1gQVnBn3W0eyyT/a/W03Tjg
         cnIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SehN6XSB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id w2si224106otl.3.2020.03.11.12.41.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 12:41:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id y71so3078098oia.7
        for <clang-built-linux@googlegroups.com>; Wed, 11 Mar 2020 12:41:26 -0700 (PDT)
X-Received: by 2002:aca:db56:: with SMTP id s83mr192818oig.171.1583955686120;
        Wed, 11 Mar 2020 12:41:26 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c3sm4520955otl.81.2020.03.11.12.41.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 12:41:25 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v2] kbuild: Disable -Wpointer-to-enum-cast
Date: Wed, 11 Mar 2020 12:41:21 -0700
Message-Id: <20200311194121.38047-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
In-Reply-To: <20200308073400.23398-1-natechancellor@gmail.com>
References: <20200308073400.23398-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SehN6XSB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
that the entire warning does not need to be turned off for clang. It
will be visible under W=1 in case people want to go about fixing these
easily and enabling the warning treewide.

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/887
Link: https://github.com/llvm/llvm-project/commit/2a41b31fcdfcb67ab7038fc2ffb606fd50b83a84
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Move under scripts/Makefile.extrawarn, as requested by Masahiro

 scripts/Makefile.extrawarn | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index ecddf83ac142..ca08f2fe7c34 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -48,6 +48,7 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
 KBUILD_CFLAGS += -Wno-format
 KBUILD_CFLAGS += -Wno-sign-compare
 KBUILD_CFLAGS += -Wno-format-zero-length
+KBUILD_CFLAGS += $(call cc-disable-warning, pointer-to-enum-cast)
 endif
 
 endif
-- 
2.26.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200311194121.38047-1-natechancellor%40gmail.com.
