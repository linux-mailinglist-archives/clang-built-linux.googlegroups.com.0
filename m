Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXFUYT3QKGQE77TSTSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 743EE204232
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:53:49 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id g3sf13439960ioc.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:53:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592859228; cv=pass;
        d=google.com; s=arc-20160816;
        b=DPlHiSJ/dDVvlFgjL9C7LHa29o5a4cVNmsieQ2vrJQawCDcuQZQklmeSE3xAYnATM2
         UE1amcOw4sWyVbPIWDyOZ/q6xINdr2YMPVM2g8fLB3WE6Eu4pQuWNqDbJDExb1hk/4Cj
         zxS36sKTM8yiHpC2t4GVt+e0La8LeObNiOIlBT/eAddYF5tEJFfCHmgEgHI5bN0iOiJA
         +lD80urtFYKtdwPiulIIFem59WW0rst3j5+xmyDONzZmf2y/7jYY0AGY/zAjCsMgn4rX
         ek5720uiuf69F7q4kHzrS0U5YTnfYSWHJLGG7Uldu4lQ9XG7ON4aak3pyS7Zy1wOpnV9
         Wkjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jGorlhcf1AZ/WK28kLGVL/RIEuksay8Pwp6JsLBIPEE=;
        b=XbisSKqNamKNoEzL5PwsCvDKWJggIE+eMUKENLQX9FKG0CvAmj/lXk6yD2cux/3RjX
         FrWNe6n8lio4hAIh6tUXx9q39WtdUfLhRWTPjPdZLe/wvIv9egLkExQUyBd1vJ/9o1BU
         Ao9z8lohTr0F0JIN+X7NIChBhepfHvYypSZ2+APlctJ/mNQ6NpvgAusdOQs1t/4gseG/
         gZ2D7F28AwUrq+VjIi4x5G3zzAzJQMcOVzxnoVrVydteAJAYB976XsVtaN4VWurR1pr+
         rThbIE1P7+hH1mfewThm5QR1umyfFDQmc2XTcMCgK05p2348k8QFZDGE+BQ7LZVDn9Hl
         rVRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Hd+JD6CB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jGorlhcf1AZ/WK28kLGVL/RIEuksay8Pwp6JsLBIPEE=;
        b=NneRApySietVEtV9VCPs7RaaaydUhDcMRkfclsSDJi33fO8PPhgDquCZzv6aCuCVx0
         RommAD+DBsMXc90s42tAium/gPsS+sXLF6EOzisa0hJ2UPujuJk16/DjY0Cb7Z0+X4p5
         y1CRZNPiC6JV/NcycWAwQetzRrBNjxXp2DaRxKAYfhg6HfvqqEVlRJLGlJ8eGAe0fJSc
         /qVwGC9VIzMMcyEA3+YvO3MTFwvGqJCNz1HZ/sZeBax4G5Le44EpvDYFF0YHQoyNXPlR
         FY4Stpn/uRsG1BT//Zs+NuYqt/WmZyBX8SH4IqAs9MqfH8SCy5GxtZyB5zwDZtrhhIGo
         ycqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jGorlhcf1AZ/WK28kLGVL/RIEuksay8Pwp6JsLBIPEE=;
        b=e9OXIvZh1gB3VTwRR5Yb7BJ5uWQqpL7/nNZUx1nR1xPJF52xe/5c17SaXo77B0QMj7
         ttDOz2Fsv/8B6YFOzwKatwI3Y5qQa/c1/FFmiEzLkHS3mf+f2ZWhEy3JmF00Y3yGL+bz
         8ZVuUyOvbx0n08nWPVk9syfpTo9BM5pZIlUb7zRsQLywu+FNipGQh5nbENCkJutsk5D4
         UARoX7GFFLBBGNBzdG43udaMlk28ARkMNEZaqpysAZn7I0ptSRDMCjUrqiAhhMboBVdF
         jNTrlxBYpZA4jHtDKUEkiyiSIqY9kBr2tGmNKOHdCnD8JQNnRWIIUymPpQT8zRxxr7RR
         luhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326NQW1p3gmqsOEq1E5GnpEdVzdGQTJ8FdR5I+BmpHn+836iKXf
	kquRmzczkzIBT/YO+T4icVs=
X-Google-Smtp-Source: ABdhPJwr0CZfCJGIaKud2huGCcvSrOoYeiCeIALkQEoQ1zVkmgP4NywiRnuEQF/XwDrgGHlKQQMxWQ==
X-Received: by 2002:a6b:3805:: with SMTP id f5mr21238458ioa.41.1592859228445;
        Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a399:: with SMTP id y25ls393682jak.1.gmail; Mon, 22 Jun
 2020 13:53:48 -0700 (PDT)
X-Received: by 2002:a05:6638:dd3:: with SMTP id m19mr20770437jaj.106.1592859228110;
        Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592859228; cv=none;
        d=google.com; s=arc-20160816;
        b=sh+6/PRt60SQzH9iFXCdhKiazPLu29L+48rg/Z9U8PWiDLcpzPcL4NBPuqxlA05+sX
         mFVODYEFP5BFhT4vaMb1ZvKN6u9pDQILvRkzagjUan7FHOKiWc1+pYjDlZGf12AdwZTu
         aE8G0E7VrxkNG55vKfn5VE7YRVhQ7kq19VP2eKRQKkTX3ynEUoR0yo8op55zMQKkt3RP
         mHTAKM015hD8z7gySJ76x4fh/tOlZ5nPljk64KsO2mQ1szJuJmpXK0TzORPqA5adZucX
         TuTQMs1gBNC7BQUJSizxdv2UeCQsSYeVfxxeXd3jNXjVI2ujhMSDTUwvu89FyNamMgKN
         n0hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0f9fJa8OA2NYK/yNB2OP/HZmbwcQdR1u3azDKPTOctw=;
        b=zaKKSWec7OEHTqyVEdrrshhd2pwc7rcqscYj6Hd1c9tQXv/sthPMLWPmcIcRDbFruJ
         eavy5TFDaVwKpoXl0o0HZ0BHdFi43G4Rhn8n8ryzvaPe22JZW9NvlI/GZY0cjkeZ4jsa
         yj/BYJjQlkk+pwMAvR02vi5p4T2yf/6GHp17yipbhLi+D8KmRWTWBhVBGC5TiPGTBhen
         4beS6pKI72FPZk0t5iSXcqXo0yK+fSNQKnUWCCNgV3E8bQ87Xelohay4Vhbf+QYF22XH
         riQejfV++CWlvJJlu+V1c4J/WUKcXCEMqjWiSlhiRInSHF88nY28QvEGkEWD+is0eC9U
         rpnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Hd+JD6CB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id d3si16119iow.4.2020.06.22.13.53.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ne5so417860pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
X-Received: by 2002:a17:902:d916:: with SMTP id c22mr21722171plz.145.1592859227557;
        Mon, 22 Jun 2020 13:53:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c1sm13934721pfo.197.2020.06.22.13.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 13:53:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Date: Mon, 22 Jun 2020 13:53:39 -0700
Message-Id: <20200622205341.2987797-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200622205341.2987797-1-keescook@chromium.org>
References: <20200622205341.2987797-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Hd+JD6CB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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

For vmlinux linking, no architecture uses the .gnu.version* section,
so remove it via the common DISCARDS macro in preparation for adding
--orphan-handling=warn more widely.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index db600ef218d7..6fbe9ed10cdb 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -934,6 +934,7 @@
 	*(.discard)							\
 	*(.discard.*)							\
 	*(.modinfo)							\
+	*(.gnu.version*)						\
 	}
 
 /**
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622205341.2987797-2-keescook%40chromium.org.
