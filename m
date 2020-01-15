Return-Path: <clang-built-linux+bncBCM33EFK7EJRBHX27PYAKGQEJW4MZHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F1A13BEDC
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 12:53:03 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id y4sf3225637lfg.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 03:53:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579089182; cv=pass;
        d=google.com; s=arc-20160816;
        b=PLkCz3vKtW5ahlrbSOnO9lY9qTXjLDafidIDNgiQ+XdfnLo3hvxCZe0DIZwpthh0cL
         dTPoxI32mqWxvhf8rMMqDnIIenCbVIddSC0XQzDD0IfAuiYXOHUcWfTxYmJYjJ21g3G+
         Zyv+iHdcfxv87sxQJCgArmH2Z6DV/MlHVt9SKGyfQqFal3+7BB2VAPmmCR7DlMpSUrn/
         rtYHAZXmQhrrA4fCyJPS0I2XA3MarVSrUTA4DkNBO5ghz2Tq8P2knClL82NkYK5DF2M1
         MEYFORGWDvrHrJbBRIpFvWK+IRsmAfku2UzUihJ/g/75Nx7MJdG4uhaoWZPCI7jHJp7Z
         eMqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=KTa0/da6F49mB4r3YmBvsRJHE2PHkGujhag5uwX3bm0=;
        b=JfIVaATGIDPY1zfORK8PmjCBXv0uG98OOp/Fc5uAQ1OfDnn5tQrx9VRaRncldENTBn
         8/bcO8/bCKUPZ1jSa7PdJIX6IL4IsbOwb1xZPkynmlgg22zcO2Zy9xz+fqTrg2xdGyA7
         c1Y2iNsfm27Kxebza48tC5USvNFv0fWRKMkfixs6HTmo5GDCNogdtXQtcZpB8jz3JW9r
         vZ4QDm3LRJ/G8bldD8tKrLO4fNFchKkfOHxSoou5CgwQYngGnpbfvYZ7aIrW8TGbE0nH
         iEUFUddSl0MzLjjUpdZvKS3ARxyFTRFcmlFzcgpzRrph6rRcvGD81OBEUxOqdh+DCMwk
         kkdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KbBDvSiz;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KTa0/da6F49mB4r3YmBvsRJHE2PHkGujhag5uwX3bm0=;
        b=oaS5OIhnMF4SUG4ffE3aQ4gpm+pFZDtq1fCuaQH+x/+nSJ+j/C+l5t6bRulHT2OMhZ
         TRYfbN2S+Sle0tTxWkTfz0zSKsi4jQbOh5Iws6GwSS0fD4b53e3yGcUS2DWCki91hRPp
         c7oMQmmS+WSyqyIaoeMkOh7WEzBndK7iu8EkI+HXbw/x5oEo4z6T0oA5Mw/8s9MCy72r
         8YogUqXSIdhhjiRagWIk1BjmUd6toIYL7tbMJLs7SwiwObIiQeA37ci9Evq7ijFxAuDx
         DS3JnyUBL7piHWz37Fkd2tKko3QcuNcOlqxv8DEZe2wDsrN4KbaBG3BwlMMSFb706WOO
         7Apw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KTa0/da6F49mB4r3YmBvsRJHE2PHkGujhag5uwX3bm0=;
        b=EDD+yPHQY76EGvZvclzRSKVhRR3jQ1+NeDVsR8/OHZgn2nE8tuC7yekX76OD+cvlmE
         eufUwTjOESPaoNc9ZN6dOn9lbSVtz/FnJEkWYKd7q4iHZH3yjyCWld2CR7PVzdFgQ+sh
         Me6POmDwZ74+/efDCnZOrHMt9JrWeCYCxnTxXEBFPT+8o/AMV+/+U7m1y1muv3hxyPBS
         sdQAGRRafgZu81U2ihWaA0uWO/Ttw94sSrw3yy2M7k6xPTbeeJ6yY2QQhhLllh72v14P
         9IS7OChbahKTkWH02IsDaIiEfqNBlbuBh1r7Iqe4jDSl0rPXsEzHOwcnxzAXd4Q7cBs8
         63Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KTa0/da6F49mB4r3YmBvsRJHE2PHkGujhag5uwX3bm0=;
        b=fHfcgkdiDoztR0uVSNE3u8aDlzbza9q/Xd8ksKmtYbmUX3SlzXmNPVMlneDqbokEoq
         DKZ1h6Tf41e6UU+sImQHX50BON7FQIzk9/p9lEx3mJdbi5WQAFV8Q3pLUB4f9ooC69aT
         zqCH3HwOkBGZnqNsm6i2wb3dhWjDSoZG4FviQp1nL+/3UmGHODUrmVR8/LeSHEk/raWu
         b8dWlzOHpSjQAVIDi79wBBrD1i7jF1gx4zcGPxecmi47FHL+FctHExitgji2uuREUGw2
         K3MfjlfOPTAFgziry+9AZwdxncVY05xVm2/tzuU/54v5fW1LTnv04r/XjKwPADse5fnO
         ZcBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXJvSNoqhnr/kJQXGdUMuCuUCnfR97CZ3KTBgYvTku83axj2KEo
	8dAEFrxntgVYnB+JhZWP9Yo=
X-Google-Smtp-Source: APXvYqw4RGkUlQGH1eKRZmIedlJ3dE+uLPMzYS8INsfhAlTb8RfttjV8UEabLPJ++sy+z85CzGWNRQ==
X-Received: by 2002:a2e:9e85:: with SMTP id f5mr1545792ljk.132.1579089182689;
        Wed, 15 Jan 2020 03:53:02 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e7:: with SMTP id s7ls2591612ljm.10.gmail; Wed, 15 Jan
 2020 03:53:01 -0800 (PST)
X-Received: by 2002:a2e:9e43:: with SMTP id g3mr1574704ljk.37.1579089181903;
        Wed, 15 Jan 2020 03:53:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579089181; cv=none;
        d=google.com; s=arc-20160816;
        b=IUzpuSUIvXMMp67eDi7zShq8AAzoof9kXBUHzvNNSTQg+3pXlw4JwNT38jg9j70kg2
         8YhGcRAf3wSya7M3VOOx8nGzALkFSu9wLL2Ct557U8CoOrW2hE/d2r8mIq19fZmieM4/
         bAPlT2OE7Hp85UdJik9ISpKppPz6Qnxw7MzIfQ9yijRweSAAPBs8aDd8kHdAJOQVxgD9
         hB/4sfHkm2eka351p+HKYkBipNKtL9KsayhVS10d5fRfTvuqRrBw6pA8gS0ceJGTpgpT
         kckxiackfq5ppQfeCpYzqNcpXmItdwCoLpEKvDpzRs4GQ/SfoulRlpJZBW+h0Rafamr7
         OUeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KFINdIH2BFTnue1c5f07ttlZtI0htAbsz+tmwPpLYq4=;
        b=AcEzTvLp4Z3vXROfu4lauywpwt4lMyfk8FVT1YhMFEkjyMyr6GAxZwA1RW8yg4tdO3
         yk4Ic6Kzd9Tii0hlV1/MsSCs0DwblIKwiRDHjkwSiK/HAz0twzyZ0UUVAH0JNdqMXHHX
         YB6YZXTuMnbT85LWpXIvwQJYtbR/bqH2GKMO2vxvPtI8fEY9XQ2z2TT+0h7xTqmddsQI
         dDS3AaX7OxdLFriK2AjgETjLsAgTKQo8uBEWad5eEDUY0TZBIiCad0tU+iPDiPAE9q3y
         BRhQPg1R8MgApokQv5XmmH5axrtX23A9Kx9U4l823cv9fE1EUElDUqCo0olVjvIXDyzk
         QG2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KbBDvSiz;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 68si855487lfi.3.2020.01.15.03.53.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2020 03:53:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id b19so17506066wmj.4
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 03:53:01 -0800 (PST)
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr33171479wma.62.1579089181383;
        Wed, 15 Jan 2020 03:53:01 -0800 (PST)
Received: from localhost.localdomain ([2a02:a58:8166:7500:34f4:3149:a617:3dd])
        by smtp.gmail.com with ESMTPSA id w8sm4107799wmd.2.2020.01.15.03.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 03:53:00 -0800 (PST)
From: Ilie Halip <ilie.halip@gmail.com>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Ilie Halip <ilie.halip@gmail.com>
Subject: [RFC PATCH] lib: move memcat_p.o to obj-y
Date: Wed, 15 Jan 2020 13:52:49 +0200
Message-Id: <20200115115249.27774-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KbBDvSiz;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The semantics of `--undefined` differ between ld.bfd and ld.lld:
    $ echo | gcc -x c -c - -o a.o
    $ echo "EXTERN(test)" > a.lds
    $ ld.bfd a.o -t a.lds -o - 2>/dev/null && objdump -t | grep test
    0000000000000000         *UND*      0000000000000000 test
    $ ld.lld a.o -t a.lds -o - 2>/dev/null && objdump -t | grep test
    $

When building with CONFIG_STM=m, there are no in-kernel users of memcat_p()
and ld.lld discards this symbol because it's linked in via --no-whole-archive.
It's marked as undefined by a linker script but ld.lld discards it anyway (as
seen in the above snippet).

Work around the ld.lld behavior by moving the object file to obj-y.

Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/515
---
 lib/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/Makefile b/lib/Makefile
index 93217d44237f..eac343b81f77 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -30,7 +30,7 @@ lib-y := ctype.o string.o vsprintf.o cmdline.o \
 	 flex_proportions.o ratelimit.o show_mem.o \
 	 is_single_threaded.o plist.o decompress.o kobject_uevent.o \
 	 earlycpio.o seq_buf.o siphash.o dec_and_lock.o \
-	 nmi_backtrace.o nodemask.o win_minmax.o memcat_p.o
+	 nmi_backtrace.o nodemask.o win_minmax.o
 
 lib-$(CONFIG_PRINTK) += dump_stack.o
 lib-$(CONFIG_MMU) += ioremap.o
@@ -45,7 +45,7 @@ obj-y += bcd.o sort.o parser.o debug_locks.o random32.o \
 	 bsearch.o find_bit.o llist.o memweight.o kfifo.o \
 	 percpu-refcount.o rhashtable.o \
 	 once.o refcount.o usercopy.o errseq.o bucket_locks.o \
-	 generic-radix-tree.o
+	 generic-radix-tree.o memcat_p.o
 obj-$(CONFIG_STRING_SELFTEST) += test_string.o
 obj-y += string_helpers.o
 obj-$(CONFIG_TEST_STRING_HELPERS) += test-string_helpers.o

base-commit: ee02f9544ebd8d38900dfe955710897b99483686
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200115115249.27774-1-ilie.halip%40gmail.com.
