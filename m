Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBKMZ77WAKGQEJO2AWYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 565CED35C8
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:26 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id i10sf3525293wrb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753706; cv=pass;
        d=google.com; s=arc-20160816;
        b=w803Ypn88tJPvoVj16+OUScCEilvM3Gx5T0bhW6L53cs4bMFH66TY7L/xfLFL5hdzS
         4I68PZEMRc+jlx7IS+BfxTTSaNVKTQOvbcq40CFncC2SHI+nThfQuu75IVK5xjZkODyg
         d3blXn14KjVZyX4lCY8v/mbCjpmfQBWDzAKovDgbSB7FurNfZksyFPO5p/Vx0Yr9c/4o
         VIwYea2CA0KTKy8t41v2gjxM/kct/eC9fV6L70MDhR3I/g47fK9UOG8bfrBggS5bmTDt
         9LJUdq1Ubho+KHGw83/2bSM4NNQMxbjoi1Y0xw3XRRku8TyQWWlXU+x4JucybmqckOYB
         8fJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=lVDrP9xdB2uwjHqux5MEQuwwBEA6+n/qrCtuT9BWO4E=;
        b=nhry5OdEVcMKW1irQpTvxuplhijirC3XMu7CaGJBgU+myeSC3uZs+dky9Y3PEfdsuk
         bido1htDBmFtTNp/TVsBnNFwJ+2O57v8qGyHhWlBIYUdHnDCMrgAN+83rRy0ilRUtuTa
         INzNL355phsrc++YbBkyM6SRiwaQo5jn67pJTerSwK2UVLOSGniSgduCoed/6pNaWoA0
         RbXheDMGw3TNGWzr+ycuI5jR4zge1gUdKU91AMn0V63RtriNrN7BCpIrHH5djuQ6oN64
         0qyefq7HAMh9ne7Rw0qmYGGBDUuOZBRm5Ku3ISZWql1lzQiAd/vooPaMuSTnA99n5vfX
         6M8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YKc0wBOK;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lVDrP9xdB2uwjHqux5MEQuwwBEA6+n/qrCtuT9BWO4E=;
        b=CqtwIRvBE0AFg5MrfdzawxFjugRL/rO9FWQHxMEogWmCkboVXiyxFjTK9P+oarSFRX
         tFfjcawO9VN4+cVeOoa3Nu5m3feTL689JFYUsh3U1VSEF2KUf9TLM6kwXWO6lNJGWpfT
         8KFBGBFj+9FbHtxB6sATtciGBgaey/+Sae4wuF/S82VTIeB3L0wKHrHpcj7rkOJzen3w
         3TaC4sCz0rdV3BF5uQQyEGtR+2+41EW2/Jf9mN/OYqCe3J88G77FlDlsKXtC6ocpNMuQ
         ROtD9k9vxQYQ+wI/Aa3N6bI+LkYCfoZWrEQfsMC/yGsF1SEJmQOkcGPA7OtEdWiJ14kA
         BtOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lVDrP9xdB2uwjHqux5MEQuwwBEA6+n/qrCtuT9BWO4E=;
        b=raVQA/Wuy0tkkPd3wTexkVZM4eAAFypcRRP/GMGPovsvOE9WtBryRUChNHPw6A/1GK
         uZTWKLp9LfJVpJu725OZ38kPbkaKSKs+zvz33l+4gLDAlWmLYOKFGSlxlkkKXWF2L9Hz
         HS6frAxdCB64d1M+KlGL+L4uNqMT+rfOOUTOGUNlWCgUTFQJytSvpfEEFp6hfhEO2jJs
         8lwW/fV8u946l8gHoVByF4SN2pqsJK0C9mwL1wCqGRAaBfucn2696HkzEFEKdO1peLBH
         B5Jc6iRAZO+4vKXhHN9Bedc+EdTp0q0dUiHdSqhNkvQ3sgogrDjG0Y2JZeeZQLR5PtrQ
         cQyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU25s+Odc1kn1tLUPh3jT3/+GJz4q+3zB4FXsuGiock9mrSddrb
	lkPHkDSwzfSeXEWip3gDj1k=
X-Google-Smtp-Source: APXvYqwUVoH9w/JxNcYaLKZ4wynds1aBiNu1R6l9ZOq9Pl+B4ptK/qu6mece+OGRwyJ95PWfFOqs/g==
X-Received: by 2002:a5d:5591:: with SMTP id i17mr10274005wrv.352.1570753706029;
        Thu, 10 Oct 2019 17:28:26 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:c6:: with SMTP id q6ls1980414wrx.9.gmail; Thu, 10
 Oct 2019 17:28:25 -0700 (PDT)
X-Received: by 2002:adf:d845:: with SMTP id k5mr6985436wrl.141.1570753705593;
        Thu, 10 Oct 2019 17:28:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753705; cv=none;
        d=google.com; s=arc-20160816;
        b=vLR7TbgkHRmMIsd2mgvFedZO9UoQg/5pTfp/OCBxhBw+rERk6s+v+UJNR1hG/cssHg
         ltuWN+hRKClUMxLIBJ771ZSvyOIVHKDmtct7IwNV9pI0pnaYGjmNtCsFOdY12cWeiHx3
         P8IVbTBpXSorJrRzByi2vRxpzMYg5QyGqIlemxrZ952XOvaZphm0pesAnRVnxUwtRo9Y
         lsm+sk2nyidQoMTMpMgv0D+t1v/cr+aqXDBp/KH3uNOQ4dyD7gsh/l7fKLbT5Sz7z+F6
         QLHOoKY8xL7z9Ja8dN97NvgNHopa7UJp3pN8Ue5SKNUgmtJDRv6lpVwHpXlbCJC26QPF
         9gAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=X+OYdLBkIYv08X2eKXt3TCPXQ11so0VYCO7f1mswfR4=;
        b=wIumSgg0ez4Hc2X57e+Nk3Jxs2QqVhe5JEj8FEFfUuFFqExDDDPTYNn3iRVFyd+Lu8
         DopOjnSedqNiskwvkGm1KHE+2i09PPwJwh8ox1zvZDSsCa4VqnlPz10Jn5DErFrAOjaX
         TRl8z+kBA7iNxMrto71UeU6nrRQczO1r1zZY1Y3lJ+TPF1AaxXF4GxG9A96W82xqAw0J
         4Rq2Y+EPR/xCXwgnuaYyarTriVqsmwFEQCoJLBQOJhCHcmxAwtvNNiZhv65aSHLvzs4I
         e4B7POoW01J889aU3BmkFqj1DDQL7q1J22s6ZnTlbp+YuaQfp1cl+i8sTw31nFoysWf+
         3YYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YKc0wBOK;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id q137si690624wme.3.2019.10.10.17.28.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id d17so5724987lfa.7
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:25 -0700 (PDT)
X-Received: by 2002:ac2:41d4:: with SMTP id d20mr7390173lfi.24.1570753705056;
        Thu, 10 Oct 2019 17:28:25 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:24 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 03/15] samples/bpf: use --target from cross-compile
Date: Fri, 11 Oct 2019 03:27:56 +0300
Message-Id: <20191011002808.28206-4-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=YKc0wBOK;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

For cross compiling the target triple can be inherited from
cross-compile prefix as it's done in CLANG_FLAGS from kernel makefile.
So copy-paste this decision from kernel Makefile.

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 045fa43842e6..9c8c9872004d 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -195,7 +195,7 @@ BTF_PAHOLE ?= pahole
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
 HOSTCC = $(CROSS_COMPILE)gcc
-CLANG_ARCH_ARGS = -target $(ARCH)
+CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-4-ivan.khoronzhuk%40linaro.org.
