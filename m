Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBV74T6GAMGQETIPMN3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 375084473C7
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 17:27:04 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id n18-20020a0cbe92000000b00384d0c98fccsf13583856qvi.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 08:27:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636302423; cv=pass;
        d=google.com; s=arc-20160816;
        b=oELX6ILMc/tlI9HUpxlxNxO1lMwK2xA/N/hDFp08rP8pDE5VnOIkP8BUwdP1QgyLys
         UdCE31Ei2FXCXSKWPFUs2POlQxp/Tk814pqkrww/0qZ1RWOKGueDSiAQ+Cjq7juHK2kL
         yJVkcR/234qTj6zK+QarBMhqKTnWjhxbYRIUeNKLKBWX6GHZV9/GvcjOxVR69KtRtX3O
         mPrRKA5gDgBKlHl4PEXiwPvmO8MTps63KLEGRjUAUp5cVhcsEtBMMf04HpXK1vnmHZEL
         lGh+7gps4esYTHoqgz5OVKpXVVBkt0/9aHkpHKHvrt4yE7vNiJDIUNN9Iry9fh6jPqPp
         WJwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=gl6TdxFHt7Br/EaXB06P68bWmz8f5+SAaCHewB3C9cg=;
        b=SKPZ87rG9Y9rPcbWVwNfKjE6qjR2r0a/xzg9onW+QxhKLxQedUeUSh1UUy9L4cH3J4
         G+pavnj+9cClVUiQfECr47pycosUTX9uPuyoxqmehFhJYMVjewgNaBN7saLm/E2cOQ4h
         BGVwh42qD5gbhGWqd3F9n5UfWa30HXZQGhG6U4CoTVNflW4r8L9E4QqqC7ZpfJoQnZvi
         rl7sZ0anJhHqfxtPrUzebp0zzCbjNsbk0HuGSrZiEWJPkp+lzych8omoIWWNScbOo/K3
         IvabvXt66bBXggUt/YwWCW3x+GOacNQCViIvIgMU9/g0/gw17F/HK0sG2wTMLrVFdYeA
         5kZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ttO9uhKo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gl6TdxFHt7Br/EaXB06P68bWmz8f5+SAaCHewB3C9cg=;
        b=o05BcTekfExhXn6yQZ1+1WlB13kckR6tnQROug34tm1B+cV+EqqKlqE235YNM1mXyJ
         uzt4F/pi7Q1aTgKNOHxrjwFWtuZhc5qquKKl9SF6l0BKZlHbpjF8c6x38yag2TIZBaOc
         wE1iCzoNoQQtxuhf841Pwc3lOiiA780CkUwLyI2ZsTLviUxZtjWUU8jv8goG/AaEWhEz
         7xqFC1s5R86ZYL92KpxiKljqZrSv+vplPohoHGTSRO143UcQCAHiabjDe2IjsZyjZU5/
         7xmD2fnWE+GcC0YYVid06tjAZi7PcP6ROAdrEfxAyDb3Mk7CBLYqXdHblQ5N6m5iwG2P
         5tzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gl6TdxFHt7Br/EaXB06P68bWmz8f5+SAaCHewB3C9cg=;
        b=J1HLo/JBp2/J8bi8FQJT+/+8r0zRmG/LeUqB52mXRpnO3sgsBdepb8tdYI8F9Maaif
         nDV7Wta4/iGyHz2KPa6gvnH+mIc2BJDyDbXiWiXcMGICjhZj6JL6nVyrahWzw1IReiB9
         piXMhDjB4yzyQO92fAsy37Z85RTP53/mbceHYfU+HHpLZF5Zc6E8k5Dxzj/gODffirHo
         6UijVpsdnUtShMSTesvPCCn3UYOhSqc2Mu9Y5m4Z+TyVRojWvsoTIoXfKKYTSVoCJIwO
         id1vw/xoBF6W539+2S0Ey4Yee7Vn1hmawHWfhlq2jSNcLL4pgzewRVJKTnNA3rXi6eYR
         Yjjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fjlPFMbl7MaOk76qYFlyinSXuYCdMaD58vHOmENLCcW8uEPWJ
	TkaI6u0vrrHx8ZYFWrqaxRk=
X-Google-Smtp-Source: ABdhPJyJCF85rbLSc5EyWxn322vMN6drL0yH5C0tnw04yS6m9bQ6KMqBzY7CI3IAN4CZGL9wvPq9vA==
X-Received: by 2002:a05:622a:1301:: with SMTP id v1mr52007585qtk.119.1636302423381;
        Sun, 07 Nov 2021 08:27:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f118:: with SMTP id k24ls7620990qkg.11.gmail; Sun, 07
 Nov 2021 08:27:03 -0800 (PST)
X-Received: by 2002:a05:620a:4711:: with SMTP id bs17mr59577362qkb.474.1636302422943;
        Sun, 07 Nov 2021 08:27:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636302422; cv=none;
        d=google.com; s=arc-20160816;
        b=dKGZpT8qjbe5jJE/kvfIOCoaevjzaitZI+tIReW051zyeNoFBacX0jRbjZysi4xPHw
         NITCxHChSGRfWSTNWUXuD3Qibo12JPYVqSMfvZgkWH+y0ptvB8VjBBkY96VpDAKNycbK
         G4CGmz8B4j9RkwtTcEGsNw2N8Tq/uDgY/SOgHKhBK77CK6cRRUu19b3IZ7UNxIAAvqZV
         4UaJbbt7XihSQpXJrdlkjdFjTZz9m1JfiAO0SLDAyhbsnVHQekE+GiJz3hlVg+6ifB3o
         3Htl/qGRKAQFbeSNju5DgDFowsZbPMqbAptmVf1nvT1hIQuCrXBTYamoTOpsFaR50pFn
         RFGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=95y4b+YUJWNBzDqMVnCdZ8PrZpY1+cjKzj0CIJk+uXU=;
        b=LQ14qqKcp7e/pom1M0NNhmyMCdUQvB1/0K/TMQNdECK6UDFCuI8YmKL3HJS0nL6lcS
         1v9qq1hpxPZKOuo1tAwtNW+cURlTHDplierBnoKqjxdg5JcABBbfuUnWnLXuh48f81ay
         8Z6HZHsdc6xgYJtd66PvYH/8mZnwNu5w/GGC3+Kl4FH1pfwIFzQXXMaELu1Of9FvIPHY
         zxTbaVMQyX+ghqKsJ2FdRXY34ysQgPC6bBAQb5Wh+YTVxL1awofH4SeZehAisNRF4dwC
         /WTRETLmX83OvQzag5+vtDKCytBEmwbvAq5KHvq3TgiEMoqNr7pQ0V69dN8AooAlzm7D
         tJCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ttO9uhKo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id i2si1428525qtg.3.2021.11.07.08.27.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Nov 2021 08:27:02 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 1A7GQh1E020834;
	Mon, 8 Nov 2021 01:26:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 1A7GQh1E020834
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: "H . Peter Anvin" <hpa@zytor.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Dave Hansen <dave.hansen@linux.intel.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] x86/purgatory: remove -nostdlib compiler flag
Date: Mon,  8 Nov 2021 01:26:41 +0900
Message-Id: <20211107162641.324688-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211107162641.324688-1-masahiroy@kernel.org>
References: <20211107162641.324688-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ttO9uhKo;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

The -nostdlib option requests the compiler to not use the standard
system startup files or libraries when linking. It is effective only
when $(CC) is used as a linker driver.

$(LD) is directly used for linking purgatory.{ro,chk} here, hence
-nostdlib is unneeded.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/purgatory/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 95ea17a9d20c..ae53d54d7959 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -16,7 +16,7 @@ CFLAGS_sha256.o := -D__DISABLE_EXPORTS
 
 # When linking purgatory.ro with -r unresolved symbols are not checked,
 # also link a purgatory.chk binary without -r to check for unresolved symbols.
-PURGATORY_LDFLAGS := -e purgatory_start -nostdlib -z nodefaultlib
+PURGATORY_LDFLAGS := -e purgatory_start -z nodefaultlib
 LDFLAGS_purgatory.ro := -r $(PURGATORY_LDFLAGS)
 LDFLAGS_purgatory.chk := $(PURGATORY_LDFLAGS)
 targets += purgatory.ro purgatory.chk
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107162641.324688-2-masahiroy%40kernel.org.
