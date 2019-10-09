Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBDEM7HWAKGQEU3GJRSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C83AD19BD
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:49 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id i18sf592634ljg.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653708; cv=pass;
        d=google.com; s=arc-20160816;
        b=mNm39j6CqjnUb0ci5EcOgD3oYt5xej4YdOYsS8QmG5/UxDka7pPBYFOsObvYi5W14a
         sB78eQKBo+73TYzZROpc750AG8lmIW7/ycKMpUImEXLJEFTQ1Rt4wymljjmuYgBUG3uR
         DPBoiSKQvU418zxGAoiavplWPF2cpFsrXgl8AFsUfLbWBGFRG6Iwo8wdyAvnFIjVYQvu
         w9QnlIcKG6ec5ZUwsfDloU25DKApBsurTrNiZ6zC53jgDpDit3b6SKagGWsZMcOgH62G
         SvC9UR0uXtLPI9+WbeO5KSwNSUoIUzj6kHhsovPiTZIUh+3N8nw/GoRalade2k1gnolb
         4Xww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=tDLvkQYmj8HUDFBKbyqCgKTQPiF7nxub4saHcoywP38=;
        b=VqKNo+Do4qtsPrIh9dp2d+iauD4K8TYidLzqnHZoiVkCogwUBHlzTpEig83C6VlvR7
         BVeVM5JtW7bvNb3jYO9OkEQvWA0q+mSg6AEXhDlmWtJ95uTMMVpmi5sH3gI9iE2G/LrN
         BFU6kD13RlzzMvmpu0j/z9IUuPj1Isaf0pYHOMWYtDWv1y24OJuC+HKYlNtOGkyxAWn0
         fJV6b6HnOTItFRhpcp9lGEHmB1mS9lMxCzppBpSsCCOPgpRaQ4Xnm8scXpkK9yjfzTmz
         0KOz71B1SJ7y8lJylHW+tnGrbaHsaTRsTJWv4Mr+6NfLM2WwHoiScOfB0xcUYw2leqPZ
         dFhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=qkf+hcum;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tDLvkQYmj8HUDFBKbyqCgKTQPiF7nxub4saHcoywP38=;
        b=sFP+NfGdYGlPAWwnn20/mXxSPE9u/AzyBGPj26vUEsglpsF0K1pJKXD9GDvKDdKhxA
         Vncmoye0aTrHJSZpsxodbAWLyBG4W7HBNu88V2K7Xax6gD5QZYaHpWTKpFfePr7foz12
         JNBSLc5EDLIR4x2/Pf7kpUI9koSAg7kazsur5foIv45fhcPL3lmin/csM4Fhsrccb+6s
         KtY/xw8paWCYuZx4WFOgaAxpyDyb+PWhbjziNXJeJcui9NyWojIsTK9SiqMpRyG6kPY1
         xxu4ILWSaKi4B2lTlww0uzVsIF9SJac2Sk1vtwGtprvRMZ2FKpeGT5AMTi6Rp0NNRmQH
         rlPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tDLvkQYmj8HUDFBKbyqCgKTQPiF7nxub4saHcoywP38=;
        b=R6gClKhN+CV9AyXILBLmJqe/JZ4FPZYtZz1PTHHU9pEM/64rFAVCfE9T+91tyoo7sD
         D/qzXCIWj9VEoFBO3KPbuQFgbg/F4GpEv87QQi57uWgVToFQYIc/oCX04OIAfbFzoQDy
         PhiB76LD5L2nybnIsLzndZasL64Y0yQ7mMmrWRASRUsI/DB1fjzcH/btjdpbAEG7A77i
         bxRWLgH+JAnL0J+SmLiUeVpxnxogAyafvNt+gA944VBkBAzCNm0ck//wGuZCARlpMTpH
         437QOSKAnaC1HHGGK0NuNQrCapT4EOnjN6BTc9e6CBj2dz0qI6B7iRhd4mYFR66d9lar
         c+Dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVNZZx4CNA3VSqwFdiOHayaINNESGIG/6Nzobqx4MtKYLGcdGiw
	TJ0zLjTuUrzXvbPXGI3qfHM=
X-Google-Smtp-Source: APXvYqyZUoYLh7C5zSRPVXbMK+jsF5rBJIOkbIwSfbFPQlMx3KNC2VkHBEY4Qq3eEOoGjJ0FKh65vg==
X-Received: by 2002:a19:ca0d:: with SMTP id a13mr3298048lfg.122.1570653708643;
        Wed, 09 Oct 2019 13:41:48 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:47d5:: with SMTP id u204ls211509lja.5.gmail; Wed, 09 Oct
 2019 13:41:48 -0700 (PDT)
X-Received: by 2002:a2e:8945:: with SMTP id b5mr3645352ljk.215.1570653708156;
        Wed, 09 Oct 2019 13:41:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653708; cv=none;
        d=google.com; s=arc-20160816;
        b=0p5bRFteXIGVQevWE2B2RfhWzbcc7jbtrEwXPqd4MOLZLqVISxJUAVKLqev45Q9Bue
         7d0txxl5gIWMtAhdHXUwNeiCJTifLF28NMhYX7+69Nk8LcG/Jh2OjY5wI8qt1aIc0Tnj
         Sk/NlNfOdGBZxcHBZKzvB0Dlw+ZlOI8in0fTL8GgH4wJSCURkyTkSTWCTYqRQB0vStRa
         gUbSaMZa1+Qtwj2fa0S4KSNxAwM4VLvcknCbYZ2X2GmNIsMYH1NIG2w6UP31uCm7plog
         721PXx1XkQxR5Wmj55Av83Xfvv68ZB8Hwka0xj68q+x6GfECFbNPf7SDuWjVGx8oNkF5
         YgMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZXAfjdX+WvsCZ4Putv4iaBG542bdy+GxK4sst7rF5S0=;
        b=AwNdoRQ5fJK7QguExsy9/pJNGR2MySkIZfQ7dgstkXfDq24n4K+hTixJOP2pZ49xtW
         /6nx36x7P9AE+bB/a+RWMp7NT+ghMzo2mmZcGhPMWNc76rEskNgNq7oXDz7nO2TwJxRW
         DztLiDctVicOFhY88QdDHQxWfOB/xKvp3ZELitgak/IyA0lKnXYPE2A3J0xjp2t9pic2
         0ZqdTd7UjlOarM/lVoVQxdpSJxvMe38PK8agaJaD7hWXYRPqFmjbeo7KXNKCc403g12H
         DOg8thoqFmHANzY8YEJ814y2+DCMc/4fIgZ420MMTuJn2HwG+cnMBAW8NLdCk6xW+ezA
         2pBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=qkf+hcum;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id z9si206186ljj.4.2019.10.09.13.41.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id l21so3885768lje.4
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:48 -0700 (PDT)
X-Received: by 2002:a2e:89c9:: with SMTP id c9mr3470319ljk.108.1570653707934;
        Wed, 09 Oct 2019 13:41:47 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:47 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v4 bpf-next 06/15] samples/bpf: drop unnecessarily inclusion for bpf_load
Date: Wed,  9 Oct 2019 23:41:25 +0300
Message-Id: <20191009204134.26960-7-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=qkf+hcum;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

Drop inclusion for bpf_load -I$(objtree)/usr/include as it is
included for all objects anyway, with above line:
KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 9b33e7395eac..bb2d976e824e 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -176,7 +176,7 @@ KBUILD_HOSTCFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
 KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/ -I$(srctree)/tools/include
 KBUILD_HOSTCFLAGS += -I$(srctree)/tools/perf
 
-HOSTCFLAGS_bpf_load.o += -I$(objtree)/usr/include -Wno-unused-variable
+HOSTCFLAGS_bpf_load.o += -Wno-unused-variable
 
 KBUILD_HOSTLDLIBS		+= $(LIBBPF) -lelf
 HOSTLDLIBS_tracex4		+= -lrt
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-7-ivan.khoronzhuk%40linaro.org.
