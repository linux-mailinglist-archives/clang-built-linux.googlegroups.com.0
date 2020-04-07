Return-Path: <clang-built-linux+bncBDTIRUHU4QLBBVU7WP2AKGQEOX6FOAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id DC58E1A1594
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 21:09:11 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id e8sf412437pjd.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 12:09:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586286550; cv=pass;
        d=google.com; s=arc-20160816;
        b=rosTQBs2DTRN3mi819LVarQRZG9QHpqkjFBg/zyxWvC9CXX7nAjaemWmT7d9czsEC6
         ydr2ooVkQuJ/6dcHlnWMb4WIe7c2pnwyU6l/BIZWjF9gwfvTtD7vbYMAK2Z7wL5v6IRi
         H3xHyC16G4AibK6bSyOFZwuXsBoP82cgD6aIVxXixMxsYt5ECgTM6Guuk0QQmp/khGOj
         T4SrBWEYaD8f/ZA9Qq0Zv3xtOrC7RTrM7ik52zu67oXFnn7Fr1PNTvx3T8vhX6KmWF16
         txcddRHBdoZsCXqM558Pq/INNqeCLWK2wnxD2jgT3TJs5jzx4qafKbNcRCmASF5OOFUs
         LU6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=zh42Oi6lLUwK19NAohHm2mukh4n82yaKAdv9G/nt84k=;
        b=Xi2HjieM4OA6vB1JkrnoMghPFzy4YMo+7l5a1TV/+DLN9n8UxcjiZxycv+xCYvgV3Y
         pQpu76ldW5oc7eJAfqZgnfIOhCpREyiPE2ZiSW5ZHDW9RJrMtCWWh+QuJ3kli/Tw3zEp
         hh6U8g38wrQmhxzU+DvGcbQPEWCUdfDPs9gWK1vgrKqxLwsKNfxdQElx6PW+670FHCCj
         bGhRPnyKEoGzCbgZWmDkAazDOV4UXpnOzfTOlMFKyEobDBHeO8wXzeh8X5BeGQjXyx8I
         2rcdUackpYw0MLCsLIH7dKaCoiXBkHf+M1AfEWx/xV7+Yl3HMtccxrMBoVTY1sl/OD2m
         lZPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OQ1rrBhz;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zh42Oi6lLUwK19NAohHm2mukh4n82yaKAdv9G/nt84k=;
        b=ot0BNmVxQL2EqHUGZa7iFmLWHhugWd4o3jf37kMQtcYJgfGkolf0W4ecNjiW2J/XgN
         TikIeq89zgJqUthYBBSUJs3Cfs4WfW+QentxcoUv2QM1xTEiU5ZmjmXrYMyiyh1ayIaW
         bPDE2ZNZeXOQpr37wx4zK4XDMUcvzL97zUH/lMr6lMYV2yr16MAb3tQQ9tXR2VANrRo1
         gn2H764d9sF17TTlPF6GEs1f6TZnPbn5SxHPvW+LqNamahs3hWcnGVbz9F/yFjUAEr+X
         O0REDfwiONZur2Srf7yvFQgvDK8fE7tq8G9NClVBhUkenC4YAmMhPzj5wJVOy0uSPT7N
         vBHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zh42Oi6lLUwK19NAohHm2mukh4n82yaKAdv9G/nt84k=;
        b=iNH6nPLidzae4BG05CCustvnu6rYTv0fv6VuhbDGN1/h/S1uQhPfUEfdAh0QpwQwym
         kMspVYIbZHh9Hqv+zTEWIRgNGcmJapEp2pgP8+XRTJZq7ZGmd97JT7TyZdmJ01immQ1L
         HsKz54gMzFp5L3uI0R+xxJi+yww9XwlaGwX3IJyo3DbzZeU1PpqYnfZ5iqLkoneNqsP0
         mdd7eq2w61Pg288TEP1vhjQihm9SG5McMxd1so0ciBNNj6YXseoA36oBZLM1Z9zMKAkZ
         CYNO4fQK+TBzcXE6FQSCQdfkOoWgX8lNW4y8CSxdskWiNxE6o5GfauRrr3fxbDIOZ5KV
         Zz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zh42Oi6lLUwK19NAohHm2mukh4n82yaKAdv9G/nt84k=;
        b=PHnVvv/FW7kzNgV2c44+/mZM4R9pPVfKMY3VeaBOrt/I/uAiOtuIY9OmTupoBB6vxV
         gZDDkqyByNBGVhphvPrS2nCcquqnjbYEjAZqnJCCaflMZhJczq7TfS77vRtenipGjGRB
         dMHmFUhb7f+gDpe/jtIDuhmtVDVBUQDxlBfLgQx5cXQAPTeszzadDg6sIHEpVoSTk8Xf
         IZqQZU41107igHjC9XY+v7o9sBBmWS8yrK/w2D5bv9E5aL3zwtJBnQyAL6dvGDiVvWMu
         dCw+C0w/+IEb1tPTd0a3L5FQafJ6lYtV6meWyAIKJhKKlyRzwLqRkGrCMWNxBNvzTeGE
         MEGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubgEXEfSJURA3h/3EijSNpYHYTu4zFV71sKz9+sasRSGdhjL3xV
	bZQDVlvZQ7Fx8iXDDdIEOlY=
X-Google-Smtp-Source: APiQypK688ABBHpvThm1wsYPNIj1jr/+cJt4gnzoCI+RY0dxQQ2BNCuq2Bse7axAuSSpUSiELGqe3Q==
X-Received: by 2002:aa7:8685:: with SMTP id d5mr4018706pfo.3.1586286550634;
        Tue, 07 Apr 2020 12:09:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:af5b:: with SMTP id s27ls2416508pgo.11.gmail; Tue, 07
 Apr 2020 12:09:10 -0700 (PDT)
X-Received: by 2002:a62:7dd7:: with SMTP id y206mr4153341pfc.79.1586286550175;
        Tue, 07 Apr 2020 12:09:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586286550; cv=none;
        d=google.com; s=arc-20160816;
        b=Yh55tVBXpTNZWU+jB/pUGUdCxbSvffAGiFt6bVppmjXptnfbjMvR43bPqZGaIZAqzn
         YXjRR0AYFXmGP7lCFMmexXA45rgu6HlXyqiigHCfPALVj8wl4qIMUTp7llKse2I2Th08
         8tpKJM+4WrWP9Gss34csJSOjynN+aTO4sFFlXTVaGNNQOM7erinIp/31KI1E1xBl+wqm
         nBZqSr9tfDRkQ/+MJ/8UNNaAxws/gM7kK+YFdv+IetM16zWF78PA9ih0zZHk+4LL6I6g
         N5b26nkGSeGvbVnW3H/EK6oZehziHHjnJFAudvid3Mh8JXb99rHhDX+6oQyvZXJyXV+q
         EpGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LDxb1cWgmjR2rFQEK0+5JpvDE312cPS2zScBr2bujHE=;
        b=oeheDmvTFtSR85JKVuFw0OrVqaz1bGbxPxSr/hRqL01AgVuDA4nAC8iVG4yGg+VfRH
         17kpWeTAYTLbXpVI8T3FuQoF+fgWRvK2IuJ+iKHmuPyDTEUHeAoly4MWml1LwVGfhyjn
         NHuO8qwuNO9eR0YRWk/0X0paC2TZNsYYy3HDwm/6plTSejpiWbjMObkGg7SfmMZD5pAw
         iYW0BeQX8xGZI7Dy7S1GHm6w40OjnoAiinWOfdyRTEYcB11gG12C1egjWRUHreC0uwHl
         RvryYIKHF0FWM6znwElKZj+sYpmIES1vfRNJHZ/q5oDxO/ZzhtIMx+6V42UytOtZLH0S
         Y4Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OQ1rrBhz;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id u15si143470pjm.1.2020.04.07.12.09.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 12:09:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id k3so157185pjj.2
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 12:09:10 -0700 (PDT)
X-Received: by 2002:a17:902:8a8f:: with SMTP id p15mr3787069plo.45.1586286549841;
        Tue, 07 Apr 2020 12:09:09 -0700 (PDT)
Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:b7ed:16a3:9dc0:21bb])
        by smtp.googlemail.com with ESMTPSA id q12sm13833090pgi.86.2020.04.07.12.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 12:09:09 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Cc: caij2003@gmail.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	stefan@agner.ch,
	Russell King <linux@armlinux.org.uk>,
	Enrico Weigelt <info@metux.net>,
	Kate Stewart <kstewart@linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ARM: replace the sole use of a symbol with its definition
Date: Tue,  7 Apr 2020 12:05:57 -0700
Message-Id: <20200407190558.196865-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
MIME-Version: 1.0
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OQ1rrBhz;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=caij2003@gmail.com;       dmarc=pass
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

ALT_UP_B macro sets symbol up_b_offset via .equ to an expression
involving another symbol. The macro gets expanded twice when
arch/arm/kernel/sleep.S is assembled, creating a scenario where
up_b_offset is set to another expression involving symbols while its
current value is based on symbols. LLVM integrated assembler does not
allow such cases, and based on the documentation of binutils, "Values
that are based on expressions involving other symbols are allowed, but
some targets may restrict this to only being done once per assembly", so
it may be better to avoid such cases as it is not clearly stated which
targets should support or disallow them. The fix in this case is simple,
as up_b_offset has only one use, so we can replace the use with the
definition and get rid of up_b_offset.

Signed-off-by: Jian Cai <caij2003@gmail.com>
---
 arch/arm/include/asm/assembler.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 99929122dad7..adee13126c62 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -269,10 +269,9 @@
 	.endif							;\
 	.popsection
 #define ALT_UP_B(label)					\
-	.equ	up_b_offset, label - 9998b			;\
 	.pushsection ".alt.smp.init", "a"			;\
 	.long	9998b						;\
-	W(b)	. + up_b_offset					;\
+	W(b)	. + (label - 9998b)					;\
 	.popsection
 #else
 #define ALT_SMP(instr...)
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407190558.196865-1-caij2003%40gmail.com.
