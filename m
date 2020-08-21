Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGOIQD5AKGQE5VAJEAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 638AA24E0CE
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:26 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id k8sf2133021ili.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039065; cv=pass;
        d=google.com; s=arc-20160816;
        b=LCjjJZ4paOzUauDzKPCJoOC4gfhKItXZorOt+lcVVL9q2BRCBW5vWGlaUeSQbg6Qhj
         sVxRGKh5O3K12u3bqWWrphCC1reIeM2FiVF89sDYo6zxzUEAh3a1jy0RJTf7K7LbSwyN
         WjIba0KVXkWV8HtIi2j9t7pnzCexlFYhnJn0784h5CmPH334Hj+vHBaz7DNhaK5HGLjx
         VLqg8mOBD7bxXVAJNynDRO0Y6KeWgAswag/oNSHlB7H2k4uXO5jyOM2L/lEVbPhf92Q9
         xolzr6l4EYFBqoTxZQDwO98tLTfskswrXm/CPl5QIMhYjzKsSzMj6HzhyZAC98vtOpaA
         +pbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AQe+dUlvDONALnh7HBqvWuazLb7SI1p+pWnCRQrlLJw=;
        b=bE3J75+RrT7PwPS5Mq5LCh9YtYfwjhBnRorrI2aTUF834XhwhdPxw/kp43H3UVWgJe
         NGfkewHxlA8Ee2kpJiro0n/sMRNFjTLztRyeKUcNsqFrHF661sbAwcA+ukRjYLLFSV/w
         1PVVBpvNQVGfFNI7dJSoEqISKTI4fZlZFvq0A1qUcyM6QZrbID/Q99zgGZsaKOQniutB
         ZexGYgop5KHbE3kZgk5T1UlrnzIC0eyUhnm38JKb+YTdSjOiBMDlkDSTNRIM5UrJqTYt
         LS1FIv6lkIhx/CtkG8SpjApxcpzK9OtyWMAU/KwnszL80pxFKpnJeQOV4NM/lMIbnRdS
         n2fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NugASbhH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AQe+dUlvDONALnh7HBqvWuazLb7SI1p+pWnCRQrlLJw=;
        b=nLS5yJp+Tia96ZRCfuiRs0Wvy258smffc1iEmD4OrDnNN1NK19g/tVgiTacCC96ewz
         E5NaFh9hEkopDoOU3xXYFmd09vldYHIU0YiQ4GbT5FgSrJ7P1hquR9uVtwWwlKyyo0QH
         OryyrXAIe8npfSoaXUsyhjacUpBjtVmnR71HSeB94nbP2p+AxdDe8oL7bgOiwPDnkfvY
         GK2ZE+qYgMczseNFd0Eg7DOWh8DMnIwkYswcoirsuukRoji20u52poHktPwCuoO4R9Ll
         Xqy9klgCWx2LVqQ5xJd89FV30gLUTmg5V01TfUQnDe0id8Z85YUGTBxhfNVBqyDYDJJ1
         iPyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AQe+dUlvDONALnh7HBqvWuazLb7SI1p+pWnCRQrlLJw=;
        b=kGlHJ8CCMBL52nGUMo6IvZgTOMi1rj/iSO7dgXxEuNVqgAHzYZo2LekUvYJoodZI2b
         aUc+0LAPbTL0B3ehbw8NN8/fNGbj29ByrqyfemELF2b0Doc7JMDKIHByXzfwqZRf/Zk4
         XA3dsSwlCdvUXdHZjnkoqD4Wzke6jDFUlgn2iXAClKkOQXtSvq4QSB/cjetYM0OMqXo9
         eduRNOx23plFXKqKfCTT2UqaeM3RVp960FLuC//DNUc7xVBNaqbzXJBEDyElUf9tHYjO
         LhanfA5o5gdzTjXWQqYKGgYiXEQMfzp16ZzWpup97Qoh7te/3hfn23cPMABDPKVJRMOe
         Sg9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532g1b8Mca07/SqJDII0Np31SxRpa5lsX5qm/7DEG46WmxMsy7eM
	aklwpAmrc17e1j4epTr64xI=
X-Google-Smtp-Source: ABdhPJz5WZhL2YhPzAn9/7B30JQjxm8QAvb/T4tby8MFs/LChj5JUx7iTNP6RVXtq/Dkj+x2RsaQpw==
X-Received: by 2002:a92:1b84:: with SMTP id f4mr3784071ill.180.1598039065194;
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:248e:: with SMTP id x14ls400288jat.2.gmail; Fri, 21
 Aug 2020 12:44:25 -0700 (PDT)
X-Received: by 2002:a02:6066:: with SMTP id d38mr3925065jaf.105.1598039064899;
        Fri, 21 Aug 2020 12:44:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039064; cv=none;
        d=google.com; s=arc-20160816;
        b=Ekti8Vk/VvYQ64lGSf7luEUMIl/OHhSdIL4fW1bCOK55jpebDymH3GDqYVNUqdcMLn
         Bw8N1DqvXBhV/GgcyXPGaKFR9FF3LGctiBXTUQa+i+1PDidIKbgtGtObHNJ3YrBQEgJL
         CUeq2guo0IHhr6j+x84WkE2dinvrs4/ZJnsz4UWWky7PmyoOKFHw2B1NCMLmcM50ZmE8
         /NGhN2k+/p7Il4ZaK7r0Z9smfk0yeBhPQGOJNjBdaZ8Reb0+ao5FJpDEM3rOywSxfBk5
         QMP93EjuAZqT0d4kQj0YvmaQl1RAEppVNi9fnbCwDFvBPL/scIFRESiwm0d5/Yc37HP+
         mwHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UQO/PcZpzZoe4IDChCWVkIxZf7tzI4XyeCxPmxC8FNI=;
        b=ocLV+9hQdiLbUQLPXV+b+wk6K4JCzkGEEcbmY5vT/1+s/8Y04+88p3yzGXYcgXvmfm
         J1VIzu6hW8sizsAXoGIWZ43E5c+eTVhcHgAH/pKvg2php7uEBdG3rp8sx2GdefEaDZ33
         lh7mt7FnGE0/jtFec+FB4FbfJ3dtS2VOOKtZYKMPp2bQLfYPSjYPz8SeVpxQ55U7kHJA
         BeE84duwT8I3Ok6UfLLo9jQLi8BzleiqYd7FOrTt1al8rrXqpjpjatnVFL+4848MViI8
         Y0kU2neQv81Hz9YhH8S14U4160q4S/kx7DBaBLTWPNEWPWxQtf/3Xd4uvntw8ZubQRLa
         3OCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NugASbhH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id t6si115685ioi.1.2020.08.21.12.44.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y6so1332682plk.10
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:24 -0700 (PDT)
X-Received: by 2002:a17:902:8609:: with SMTP id f9mr3642315plo.324.1598039064310;
        Fri, 21 Aug 2020 12:44:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n1sm3563798pfu.2.2020.08.21.12.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
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
Subject: [PATCH v6 05/29] vmlinux.lds.h: Add .symtab, .strtab, and .shstrtab to ELF_DETAILS
Date: Fri, 21 Aug 2020 12:42:46 -0700
Message-Id: <20200821194310.3089815-6-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NugASbhH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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
index cadcbc3cdabd..98d013dcc11a 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -823,7 +823,10 @@
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-6-keescook%40chromium.org.
