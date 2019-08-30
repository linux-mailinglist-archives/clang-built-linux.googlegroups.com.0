Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBZ7FUHVQKGQEUE3D2UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0690CA2BB4
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:48 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id z39sf515693edc.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126247; cv=pass;
        d=google.com; s=arc-20160816;
        b=dc4K53fQbz27R2myu2bMDBijpef8kyXmYslYRXFI1I5N5H2mVH2KA12EuS5cRCoUpa
         w3QFz4SgOI7gsW2cIj7BHKfyXD1NcJwI6rChisKvn6DHay7oMuAsHd4YUHai6MiB6xQI
         b9/iklTO6WsWruN1iboiCjAuwmmxt3RzEI7CLYBkLC2YNIQiV2BTHwIR6JvcDEJmmBm3
         +bu4OSUzRxCea24P3luhfSLBaxW4kuImLOEZgUkCwYtPJbetQoUYg77TdcsYd0k21Obt
         2JYOne9wnXwr6KjeAKBQck++/ADMBVmEfBvzB88aik69rqDy9hrFXXKf8Mao4QvybsD/
         8BSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=S5RpPOnKAlJBn5W472nBuk6+VbTF1ey6k3T4ffz83Xw=;
        b=e0BcQp6DE74U6TKG1/c1keS2CYIKAwk0XcGajynE8Cis0gnl1mnv8dTkgJbSx4atel
         P+Wp7v0pLZt/lSqaLDMpKhlb2gnl0FGZLrqMlgOr4IJLkRBMCD0CgbHKLVvH8/R0FjZP
         CFfzxp14fjGSzM8PZy/gBSmOQrpm713ZDzoWLGBprFbRtBP/yVfDLYUPn8qp9/krRoT9
         auyXejbJrgvd5LS+k3KdJgTUfZa6Mz2k6tBHARhG/QhbhAfykAMJnFTKml8x3a3RLZTw
         Mw9LGk3pQ026MzTkrnc1/6t1A+Nlj/Xw3OMJNdVoGqiUAvEE9oan75LfFr3YsElMbdo2
         rL2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LEYfqXzZ;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S5RpPOnKAlJBn5W472nBuk6+VbTF1ey6k3T4ffz83Xw=;
        b=CXLxDv6Wse9VKWkZQy7baslWboBcjeRWNhs9BSu1ZjN4geEMC1kwXM/bEjfysk5WY+
         ecykh0KUiYLdKwFjYNMDc954erYzJDigroAEBbZIXFakvnhYa5pyXJ300+tliu6Pwdvl
         JU4Fj4P17rxI+FjT+1rePAPBTiYm4AvlHT+cUkaBKFAXHgvn2hb8Q8u04B6s090gogUL
         bPlWRemGmvtoiHOaCzp86zeC4ES62rMaZnBQyQRMmkMWVBvugpvk83QerxebCqzUkAbf
         lgrfvieDbff4R3xFZrjaV5vj0heVYPiSH1afNI5lLqcGc7U+ypwiV7nYRtL3OjsYWLwq
         FuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S5RpPOnKAlJBn5W472nBuk6+VbTF1ey6k3T4ffz83Xw=;
        b=CxQ5mOf6/DwQkTJQBwNruCgImTkQNfChAVB3QLMbcQLs41l9dtt+E9b4kfHuoxkF3+
         JPyK6zSr4WbcwpQ2dyQwCtWQG9M4oU5LTEpROLOdocaxNwvsrZ+k4YAnlqsmxzd88waW
         MpUtLX3oOfOZFn3ryA4cyzgAn9MtZLBwdsLmC2FeywlawOgMD99ej0Ar2y5Vk6aUG1z6
         zU6tZNGHvXDx951rQMBCtQ7xiK9/kVYuEL6MXp+Xyk3YtdVOzR6PGRDz57NkhEAEPpRh
         TQJMO5aXJmjBAWxMnvG1cWM05/8jJ6duTOaVmA0zKXD5udAW1ghGa+lE4dBb/qyuy3kB
         TPMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwYXt+tk2SgKzGt3iSfgBpKDGxX7wjPIzdtY/iW1qA7qCAXnZQ
	5srr7PsX8+lmqUoZn5IiFlc=
X-Google-Smtp-Source: APXvYqxNBc4BogSOFJSzkR5/2LPILHXoycTpotu5rPkR4tC4GVioB/qDjD010j5jX6RuMc+SXh74nQ==
X-Received: by 2002:a17:906:d9d9:: with SMTP id qk25mr655431ejb.275.1567126247761;
        Thu, 29 Aug 2019 17:50:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f0d1:: with SMTP id dk17ls1243910ejb.12.gmail; Thu,
 29 Aug 2019 17:50:47 -0700 (PDT)
X-Received: by 2002:a17:907:39a:: with SMTP id ss26mr10997410ejb.278.1567126247410;
        Thu, 29 Aug 2019 17:50:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126247; cv=none;
        d=google.com; s=arc-20160816;
        b=Mq8ZgR4fxzkDX1tG3dDuotpVPT9VbczclyTCpJw2hpcDq2AlTiRfqZKxtrBRs0TrqY
         UFBhmmngcpyIXiyLlLejo9wUSY4LKtY2AmpSuhHL01YkVWIZGiTHuIu7O0yAglnqI6Wf
         +dp7bM/lJieQJoh/vE/hXwD85y+Sfjbi94Q2d1gfAhGGZ1xs97OSDlK9IZRnof3GBPiw
         Y1wXfUUtGTHoEz9tzaGQegk70CVvhrOJ3RqJajEajfBgOq9U9jPMvWfQxOPoxjfj8FM0
         l4/r27YOO6TA4zES1cJLHAf2h4bu8+3Y7rECT5+7rGJXPe265h+zb4qaK5BuaRlgRgVE
         hPKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Q+vZM4cZektdF572TqWkVl3QkOoJAXjpmJXjWwwbKzE=;
        b=taiwMlfE9pZWLodppSPIjx1LXk22lBHnFbfr/e49TUJtkujqu2yR4MKSmUoGGp+dMJ
         If8On0GSMrpaP9qRHLYquMZItxc/G5f0Jk5JV2ejyKK4KD/jUTrfW5HaE0MyHP91O99i
         KovRo/SiH8IY8Xq7mzBaqPNCiNsYFsskI/T07xfLGhHxlHNzRpHjsYIiaDvz/armjdRv
         d3mwbdH3DthU7+Qx3P/d1jCAWii0EGCuuG/5DJcLOuoARtcAxFIJ3L0uzS9+FXqN11Rk
         VdAYi8sbqtey46OKNmSr/wZuyS7S+zkLG82ggfoWJ+ihV8xxp7EYUTuSGkt1MafxOoK9
         WVww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LEYfqXzZ;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id m16si258433edv.2.2019.08.29.17.50.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id r134so3075788lff.12
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:47 -0700 (PDT)
X-Received: by 2002:a19:ae0b:: with SMTP id f11mr2637945lfc.28.1567126246924;
        Thu, 29 Aug 2019 17:50:46 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:46 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 04/10] samples: bpf: use own EXTRA_CFLAGS for clang commands
Date: Fri, 30 Aug 2019 03:50:31 +0300
Message-Id: <20190830005037.24004-5-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LEYfqXzZ;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

It can overlap with CFLAGS used for libraries built with gcc if
not now then in following patches. Correct it here for simplicity.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index a2953357927e..cdd742c05200 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -219,10 +219,10 @@ BTF_LLVM_PROBE := $(shell echo "int main() { return 0; }" | \
 			  /bin/rm -f ./llvm_btf_verify.o)
 
 ifneq ($(BTF_LLVM_PROBE),)
-	EXTRA_CFLAGS += -g
+	CLANG_EXTRA_CFLAGS += -g
 else
 ifneq ($(and $(BTF_LLC_PROBE),$(BTF_PAHOLE_PROBE),$(BTF_OBJCOPY_PROBE)),)
-	EXTRA_CFLAGS += -g
+	CLANG_EXTRA_CFLAGS += -g
 	LLC_FLAGS += -mattr=dwarfris
 	DWARF2BTF = y
 endif
@@ -281,8 +281,8 @@ $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 # useless for BPF samples.
 $(obj)/%.o: $(src)/%.c
 	@echo "  CLANG-bpf " $@
-	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(EXTRA_CFLAGS) -I$(obj) \
-		-I$(srctree)/tools/testing/selftests/bpf/ \
+	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(CLANG_EXTRA_CFLAGS) \
+		-I$(obj) -I$(srctree)/tools/testing/selftests/bpf/ \
 		-D__KERNEL__ -D__BPF_TRACING__ -Wno-unused-value -Wno-pointer-sign \
 		-D__TARGET_ARCH_$(SRCARCH) -Wno-compare-distinct-pointer-types \
 		-Wno-gnu-variable-sized-type-not-at-end \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-5-ivan.khoronzhuk%40linaro.org.
