Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBF6IQD5AKGQEJVPHVHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8F224E0CB
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:24 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id q5sf776806vsq.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039063; cv=pass;
        d=google.com; s=arc-20160816;
        b=HkruZzAxKEXSNfSK2GmyqpOIO2hy4hA2m5qzdEMrrxK4R2LhZShutxrNsbZ3vRpm3I
         aEKXclemGQ46yUGq9gkTdRVFr9iT9OfllvoPFHIuu+3cag7Q5e2hdq+agOvKVMpLmPZK
         YFkphkxZJq+VKIWvJ0EcGYHNlRq5iWPHIJIyZwbq0OsmineLYvzkKV3vUsJghji19YMk
         b2Z8/Rwj5K2ZhlWoFgStW3SbkH8SifOBl+hIuWHQbJMAQCgJgWj08KRef2EMz+lzFthN
         3KLgId/mr4ZcdKyay5k1pEkW0+qiT8ZgqhbIsC+XQ6njwXbepQrp87BQ8sw72NruiHuC
         sX4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ibyqgnBjyZG/T2h5Dj1UN1IF2MXXU67a4gQDc8pXOnc=;
        b=APhrWVNMA5U/dvi4cLNZRHvCu5B2ENp1c6rEFGwXnPD43vwOwUBos9ba1BaTNdFkuU
         CWSnK0ZXmqLuxf1/9+saV52PdQ6ChUBbNomdpySwtNBEDwDqNPHvvRhXZ4KVU1OFxc5Q
         JMiaU3uegZ2MH/Wt4LVOpH+158RLbeKv41odYZ/yZJptaaLAAZP6+49httVMKicNOat9
         PTjg2QwWUYeYD1Vrk+L4wmMiYmn5Qcid+kni5PpsTwATxIsiFVvz15w+hB50mCBB2icD
         oZXMAxgt+G9Mgx7bHvGqdPJD7F4navdUgjC8obmKQWjvE1rIOyV6Mv8VeSdQO9sFfbDd
         6Ung==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="i/HEp8a1";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ibyqgnBjyZG/T2h5Dj1UN1IF2MXXU67a4gQDc8pXOnc=;
        b=Wqq46ie4/yfNoyVvA7TQVOju/obz9/qhlx13Bpvc6NRWzLhOCse+n1JOxiz12xub4C
         FnyMTwwMQdQi26Gwh9DRFyX6Gdu6vDBv1N/kzrXL8hzNFCGzJFW1ugKNM0C3czkfjrav
         oizKDtIE5in4STbxuQVUE+2uSTtdrH2nceHtVKwQyQC7QUmXth0wjsEQEBrmpalo45eR
         Y6Uy1zNS6FT3ONNnfAyLVcVGE/d/GYyfX9wv/0NqOmJ+SkmHew9xUSroZXY7K11ELkfk
         rEbwCGQ5h10Ngzyvm+JUOXgWuRQZN4xHMop7JUwog1hLBtMaWIJJ0G18P42ekq+p4D/Q
         mj0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ibyqgnBjyZG/T2h5Dj1UN1IF2MXXU67a4gQDc8pXOnc=;
        b=KylLF2UpvNGjfHghfU98Qk2F8EnC8QSUlJvry+lN7wcWWes2nT/XiNwQ8dnp35yt+G
         QZza6Q2Qo+dZtYCXiIZro/h3kNKZDoO5qG8MITlzFtNGiifolUdK7riuXabx6vPTIX+7
         YSyAhmT/QjdlFtal6N4J/P5L4FiG+8NKCypauH8//7OlSmNJk2maxJjN4+gw70gQdGja
         ZYpR9FAwOr7JHfkfPwH94BBxWO8b7o7ZMKPz6mRvUsWJCZWa57eA23PgUl7VaJ8iJO3e
         Wk9sbZBHK0Yb+8jaLDcI9VrWt59TWS5yI44qbGhT1j73vuQQsbLykYfmEv7Ri3VsP1OV
         MFEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530P3GePxNkVOiGPwFRS1mTiipKQ3vOb+WnrKIP+Wgn0OPkykMKt
	jVbkn96/RuF4M+zxYSUINYU=
X-Google-Smtp-Source: ABdhPJz6w6rSTeeAKrP7MzJ7tpXpJA1Bt+7fHoqRHi720+qbL2bbebYWfJXV/KrikIOY/j/NxCDj7A==
X-Received: by 2002:a67:ec13:: with SMTP id d19mr3299987vso.28.1598039063292;
        Fri, 21 Aug 2020 12:44:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2667:: with SMTP id 94ls219785uag.0.gmail; Fri, 21 Aug
 2020 12:44:22 -0700 (PDT)
X-Received: by 2002:ab0:41:: with SMTP id 59mr2716261uai.40.1598039062933;
        Fri, 21 Aug 2020 12:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039062; cv=none;
        d=google.com; s=arc-20160816;
        b=dqky5OgXIkyBehTPDMmDO8R3iiKDoghqAikXHueiQBfk6+X19FCGPZXnDPK/HSINPg
         E5xeiLXjkmzMwCKrB41KuuyXMvy9taQtkxApJDZT345fIhAcr0GhY2rjQhuVx87TQ2Ue
         +LAKBJ7Ib3kBF52f5hkby+I8I05rpfNu4WlcR9iOD+xXRohsGcmxa6ayK1hZogPzF1gZ
         F2c+BdH1gsKasksCvLixCWUwheodMhm1ER9DKoShxewA8cT9cMSgX++nLawE1ZUGj9Ss
         Oin7nIOGFRl5Lg1T8z7Um9gwnTxwCxu8qtuwjbHq4JkfOZnyAcMjF1bs0TDFUR+tKpbu
         ilqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7KJKUmMIwELFiu+Jhx3PR/flYgx4mAaM57h538oQIMM=;
        b=NnhNcaf2ZgQhcml4Y7GmwKioKh40EWJyRiV+lkV+bEyBk5R62nM1VdqIBnQZ7EhwUE
         Sm+9pI8J59J9zs+cWy/7iGyPdOlojYmqK91JY5I3xIHp+JVAAZzKTKSMmS/GYqDSblqN
         BH3y7skwOLpBeCmi7N+8ZxuPIiyXAzGomvCIyVlTPL58HLBueheylUnNJmdbpdGvkYRx
         UgbtfNQPAx8sLOvfv8s6QN+RuRIP+J3Wi1ZrgQNMWDtwQxG1qRD9tB9p5ACttBLz6gyL
         6iPtMp3R80BOjfn98InXiAmI/SJSe4pkKRILJMetwnw6lxhXakTZg3hVdo0BwHZyJzz0
         upkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="i/HEp8a1";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id g19si134241uab.1.2020.08.21.12.44.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id f5so1334344plr.9
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:22 -0700 (PDT)
X-Received: by 2002:a17:90a:4f45:: with SMTP id w5mr3754850pjl.11.1598039062148;
        Fri, 21 Aug 2020 12:44:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b9sm3354866pft.98.2020.08.21.12.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
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
Subject: [PATCH v6 01/29] vmlinux.lds.h: Create COMMON_DISCARDS
Date: Fri, 21 Aug 2020 12:42:42 -0700
Message-Id: <20200821194310.3089815-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="i/HEp8a1";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

Collect the common DISCARD sections for architectures that need more
specialized discard control than what the standard DISCARDS section
provides.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 7616ff0b96ec..184b23d62784 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -954,13 +954,16 @@
 	EXIT_DATA
 #endif
 
+#define COMMON_DISCARDS							\
+	*(.discard)							\
+	*(.discard.*)							\
+	*(.modinfo)
+
 #define DISCARDS							\
 	/DISCARD/ : {							\
 	EXIT_DISCARDS							\
 	EXIT_CALL							\
-	*(.discard)							\
-	*(.discard.*)							\
-	*(.modinfo)							\
+	COMMON_DISCARDS							\
 	}
 
 /**
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-2-keescook%40chromium.org.
