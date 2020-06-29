Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBR4P433QKGQE5UVDAEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3306920CCAF
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:49 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id 124sf3303170qko.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411527; cv=pass;
        d=google.com; s=arc-20160816;
        b=ElBgGe68f/91xMjr7xNisqpqs6R4pMAvl8Jg9gmqWjvAwNwkQZuK0hjqltUmCfZKPX
         eelDunBCjC16HVIJ50qrdOomywP1Xm+2Ax2ciM489SYcNzRrY0j8qa4exRD4Wk729ofy
         H6E+zTeCO7GjQaJJBO/ipfoaZR/7UEqogaq5Z1Cc6XRhUi+GISChKfXWWJ4Cg50aSUP0
         RLAW3iWCz7MXkdl7ix5HsBC9tdHhUZ0n65KUeHle4nopH8BbRe6K9nzC6TAU+5630t9P
         o0Rqx0JVwwhLW2PCm0Zdh3tKtm0xbS+vnXOk24kgXeq4OBwk/TYWQttNDWndSqftyXEY
         Z6SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WEkdPeqiH6wmsubeMA1WFICLiKPJ92P0LhR20RQlMTI=;
        b=tgY+7sngsxAJoNAI+6EbQeIFfxBrFRQuNXg6gX4PL7eA7Kj+FMt8oiugsRpGW6xek0
         XGyGo2v+SJ3sVMposmkqYXC+uqN0ZlUGuGuHqOztgr4YdAbotbEAfUmMPCNym7rZnKYj
         uGCtdPe8zdKVPcTxLvo9sgX1PiBRE0pKgUyAs9gyZzptnld1YedOZXRgP6RKMfFssnJv
         e9rnBsDLnrktfLjMDKDC/Wwv5XhjrcHvb9Uof2VGJQxXBfHKmut/c0aYbOxA2IQp3nne
         FcsnIyQJhCwq4Q9Gvhtze5eaOslzoisnUqrna4gEZUzexUJwMZTNndOkgSsz5J50VEtS
         x2jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DI7brhSn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WEkdPeqiH6wmsubeMA1WFICLiKPJ92P0LhR20RQlMTI=;
        b=ToGzPabMMokgxOUX9RyWyFGyBI8gUmoncbpnta0Lu8fJhJ5fjbkBmH4npYVVZ48m0d
         7Utys7P3JL1prO6E49TkERMqXheWXkEDLlhkj/JsWh0SrqkYDErneR2es8QSpEyBa4hh
         m1hAPLNcLwkxbHYCDlEV2ytChsR7+Z2gNtzqFqhW4Qd1PAB11TbGtDtHaKLkUjjQZsN4
         rwrB2vkJOivnBxiwNihO3AlQKxFrMAWPJjGO4pDAFoDpO3JTzYIQ6fo+EdC7bKjmqxNn
         D5d9A/2lDE5CQT0VAEPgeCs+m+eWOb+2k8ZNVOV5m2jIvhSuvL9eH09XBTxf3flIr+rF
         gEjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WEkdPeqiH6wmsubeMA1WFICLiKPJ92P0LhR20RQlMTI=;
        b=uihq97UdJi1lMtGDKbz5S0qbqkRvVfS7kw2oyEn7TYs4RLFwOnGvsII1Wx8h33VvoR
         DbIHJdnmyo9geaGEEIV/VKP8n4SS9BuOTGw54RoCL8OoTWlb/ONOCPnIoAYxBM2rKXYP
         BRxlZXg2oPB9E8fOX1uwEM2Yd3c4EisqT8t+Ywt2mweNQlYAoa2NDsHigAF57n2dtSvC
         Ebck8sNgKuN29fnXY345QYTD2OkGwGvO20OC5h1AyUeyoDT2TzvsCaetEHGNX50bGBWF
         6hJTIIOaM7DxcxnPjVluNVRHOnhdxnydIj5gOgDC4oYqlh1+RKe41+cmuCv4pgWby8xa
         fGOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s1qIT0MomGkUzY6EB5xG8KPbo7g7PIgmCVpJhHbRoe1sHSQQs
	Sl9qY7nl9uTPRaw6RtARrh0=
X-Google-Smtp-Source: ABdhPJxHQ6s75Le4MDJ0/7zUXDcZesi2iwama3K/eqNLQIp8vQq4aOW3chOk/LzBgx3bI3XshAoGuQ==
X-Received: by 2002:ac8:34b1:: with SMTP id w46mr14312932qtb.175.1593411527790;
        Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:16ca:: with SMTP id d10ls2565536qvz.7.gmail; Sun,
 28 Jun 2020 23:18:47 -0700 (PDT)
X-Received: by 2002:ad4:42ad:: with SMTP id e13mr3929844qvr.89.1593411527508;
        Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411527; cv=none;
        d=google.com; s=arc-20160816;
        b=ueaGWFtKQfC8IqfnzM8FuTep//41Klt9rJ92gtw4eFbWGWulPFZPVzB1CAzXn2Fq59
         Aeq23RsNkqktt2sm1peQi1jjpA8v53PM0QXpEngM+ydWFKqLsJYZP9iHfFHzJMDm3uv7
         WMzOJyeZtFhhAJxkFKYh26Kpg/DvYc63rIASGRFKMw/kkVutKjpTyYMi/H0UxTe3GE+i
         mDUlJm4JXen7sR5/kLc61i4nDabLlEvsVeo48UeKvDi+95iLJ5/m39ajUd3E+gbKKskl
         yeX0ogS3kFcAzy+o4nkCtOlaceous1YoLbF4tOUz1TI+ut9TXrA6MuE+bdoUSgWQfSun
         oDdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RpUogxOiAtRCZJbpj/Xg6f5qeGiNnaYs3fJRPX/karM=;
        b=spbjp2lT1V0NGfc7tH4XaxV6yaJD4zDWtbJvsvc9v9X4lY4KnsZknmAKWAJ+3M3i6+
         Ly3hleIqGIiPJHCkVPxCCIC7JIT2GwpIncamZSZFjq12zrJ7IdcgGduGJq9Car1wMOvx
         Z+wLG+gL7Qv6br4QVpH/ZZDvL7VRvAlSPNARSkTQEo1EmdCGZdWHdJYoc/yH3nBh9vxF
         B5u8XwI/R+eHfaxGgzindBVjOo1PHQTVL0L+sbJMBEiIcaG00jRLEWcVewhc1/nJKivj
         HBimo6A4LxP66EUq913EvLjWooO0pDStL0Mz59g8VoHeDw9CXtPg9DBuuxCKhUETOc41
         R7Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DI7brhSn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y21si2278335qka.2.2020.06.28.23.18.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id t11so2591821pfq.11
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
X-Received: by 2002:a63:fc1f:: with SMTP id j31mr9226331pgi.104.1593411526749;
        Sun, 28 Jun 2020 23:18:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id nv9sm19380828pjb.6.2020.06.28.23.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 04/17] vmlinux.lds.h: Add .symtab, .strtab, and .shstrtab to ELF_DETAILS
Date: Sun, 28 Jun 2020 23:18:27 -0700
Message-Id: <20200629061840.4065483-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DI7brhSn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

When linking vmlinux with LLD, the synthetic sections .symtab, .strtab,
and .shstrtab are listed as orphaned. Add them to the ELF_DETAILS section
so there will be no warnings when --orphan-handling=warn is used more
widely. (They are added above comment as it is the more common
order[1].)

ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'

[1] https://lore.kernel.org/lkml/20200622224928.o2a7jkq33guxfci4@google.com/

Reported-by: Fangrui Song <maskray@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index c5d10bc53996..9477359278a2 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -796,7 +796,10 @@
 
 /* Required sections not related to debugging. */
 #define ELF_DETAILS							\
-		.comment 0 : { *(.comment) }
+		.comment 0 : { *(.comment) }				\
+		.symtab 0 : { *(.symtab) }				\
+		.strtab 0 : { *(.strtab) }				\
+		.shstrtab 0 : { *(.shstrtab) }
 
 #ifdef CONFIG_GENERIC_BUG
 #define BUG_TABLE							\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-5-keescook%40chromium.org.
