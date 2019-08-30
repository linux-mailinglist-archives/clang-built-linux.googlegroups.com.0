Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB2XFUHVQKGQEVSGU73A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D94A2BB7
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:50 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id c3sf3170829edt.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126250; cv=pass;
        d=google.com; s=arc-20160816;
        b=TjZDxqBV2Vdpo2vwlWfRitOLJy7ewBf+zqlpotphTv/2JkAZ9NcCPIQA/0rNNLqOXl
         JYm4/BWHRRQBUblN3P4p/F3jwXvepGBrTmNhG2xtIe2u5o5ZMVE0tq4cRt8xZNMHqMNa
         d6rMAAb6XVGXtPjVhcpfz1OW1VqGCYu4HvlIllzs340Ab2Ev6xWWnhPNmngVA00Utqu5
         bI5GuVYFZ6+CZImxFvLkU00A1MS41saW8XanW0j8uDMl8nQNjc0WGo8bNcxrn+h5+1Xf
         GoOe/fBAF4k05A+7rGO0NpUBHfHdx576DvhlrvFfT2/kaoITIg9stkU2HdrLyAMg9PYK
         QtFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=XuofJUM3o3IXDQ379u5b3nFUKfaBjGkcDuxOId2C+KY=;
        b=VXnvw0GFIQAfIqL/vQgQEs+q9zpivmaRTcUairmRz3JzBodo0KCaC5Vp8HLphyKHwj
         EFVy/onedPO71vIdanNROijVviiX+5EHFNsSigiSfXOLoaIq3ae29qEIUuA7ZOWAl410
         s6eHRPHtEPz21kcrgBscm6PmZR3TLroao2Le9Yq/NJIhM5dv6cUZoO85PF/s9bJsjAST
         8g+I+52RiuF/VPGtSkvsCOZmcF75c0eLYB/ormtmzA+p29lwcp/bfZjbgavSp3Uw1eP8
         mQ8lhM+b/2ywpJPfOp4RIGNtSVLegoaJ+K/i8l/U4N4rShjK6oi6Yk9JY3iueESGrcCw
         9T3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pWeUz6Fu;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XuofJUM3o3IXDQ379u5b3nFUKfaBjGkcDuxOId2C+KY=;
        b=O2cQptxaI6PD4AjwpXr5Xc+HAE3kkTdTYAp8y5FvIgA4rZsNlTBuyDuOfttI48ASdF
         RdTFfRuNeAwhrSy2RI08M/AOkrNz7Y6BUiAxxzFMcHquG2BRrun2xH9MfisczIKm5iEv
         U8eLOpTf/8BBUlaT+/487ptYq85ecCBegJb6qxauayupiL7c+HMynrt8Nd+1UVaWWFI8
         3fC9sijDbltJ5UTX1JUKt2tGjFF3tXU7ergmtyN7kgkq+VeB/3gB5iMm2hVq5LZlFqjo
         muY2/AaGZYuwLIM/v1EXkVGs9doBFUCtEcm66ksPttNbW9Iqdq9+opHxuLwXlTbFv1eR
         yO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XuofJUM3o3IXDQ379u5b3nFUKfaBjGkcDuxOId2C+KY=;
        b=QTBNhchNSQpFsXhWU1zGlIiVG9fYDnL3In1/WaFnuqfUFO4oBbs+G4oKRZVhklVzgP
         kLBOr+nj/QstKHciEa3zQSApFhzu8v3TgdU4lp0NBSrdacfP6/jSWPN7TM78ilgi2avu
         RJuo1B88MXVMdPj/OtOkyD3jBeWsXpTFlW2iff26RtesK0lqnuzNLWbENVAOuVs3TJxU
         T7x+2BGpM5eQJYuNTHQTN+xBu+aZwJVSyYLUK1vErVRD+7VqYrVWLxZfc6Roo6pBhWtn
         tAYSAgNGpseEgyYNdmnp/RAY1zWstqfTNBJldOZixiqCOsCoGShAsG8ICFi1Bz+Ff/j7
         HRSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWiysrGMY6YmVAXv+9r+Yl8qixherLrwg8DaBe384xNOEdt57b4
	iUK4N5wupp2NNzAkdqk/LcE=
X-Google-Smtp-Source: APXvYqyuNMe4aB7oB/cpWpuXiQ+AJ0rnEDoySO1JzoZ/EtSzWvfqh9R2K0k/mG2cy2mNe9rQgvuC6w==
X-Received: by 2002:a17:906:4e12:: with SMTP id z18mr10864683eju.161.1567126250043;
        Thu, 29 Aug 2019 17:50:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7f95:: with SMTP id f21ls1267862ejr.3.gmail; Thu, 29
 Aug 2019 17:50:49 -0700 (PDT)
X-Received: by 2002:a17:906:c744:: with SMTP id fk4mr11008265ejb.189.1567126249692;
        Thu, 29 Aug 2019 17:50:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126249; cv=none;
        d=google.com; s=arc-20160816;
        b=sxHHdQJKg24AJF/xadqabN38rJBM86jJp3+Xe/5C539gOVHm/OC0o7avhGmOisQw4I
         B1f2DX9qAviS4wUvXi2In2z6C44ltp0kdaylr9PCaLuuHP2k/kNi7WwoTTQoJZ3G1L6p
         UdvUd//kMtFgwedJYERGYZ22HhxBeFe0QJo/kwrzLS1khYCwtgg2SSKLW7N3uQQh56yq
         fE+B2M3KbsxaWekWQpNoonxxGJ32N6MdTxnjj2RLbzayLRQ9EF4YdzHqz1MG0QOkkbkU
         69xplvRGDOCmsxjoYFoD4glcI5IIcMoJTXR/C9DvUk43gzvaqXcL3HkQ3ZO6/4r7hatD
         jDlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=jGmbuQhjfybpgV20Mr6h/vZA852gJhY9ROLsc2sx8l8=;
        b=HkvOWpe5p65h4lMlGBJ5/CqeyTP8SrZj5/mvCPjfDM+GCaL7CvBd/JbkQiK7c45Y8v
         Rj5il6iY4n26tlzoBkzvnO6xdSQqMS8Z6pOChjDuLnf/w82GPxakZsi2ME82/r0ZokgP
         M9UQENr6P2wIppdchXuE5vWJ3fAyT+N7vqo0cD5GaSSOcLlWSCZTBAwTVfjaw056Z1DX
         O05LXiEHgWVGVBfvENy9ExiKuTeIT7Sx+RbGu2osIGLkkmmheWnYkiM2eFRosFF9DzXI
         Q9jJk4ybpMpyHDVkpT8QbI1v5PGMT2emQ+pUB9fZsYNCKwytRCW/N+oqSZ7vJb3U6CGg
         GNVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pWeUz6Fu;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q18si198019ejp.0.2019.08.29.17.50.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id f9so4756481ljc.13
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:49 -0700 (PDT)
X-Received: by 2002:a2e:b004:: with SMTP id y4mr6683248ljk.124.1567126249466;
        Thu, 29 Aug 2019 17:50:49 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
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
Subject: [PATCH RFC bpf-next 06/10] samples: bpf: makefile: fix HDR_PROBE
Date: Fri, 30 Aug 2019 03:50:33 +0300
Message-Id: <20190830005037.24004-7-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=pWeUz6Fu;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

echo should be replace on echo -e to handle \n correctly, but instead,
replace it on printf as some systems can't handle echo -e.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 9232efa2b1b3..043f9cc14cdd 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -208,7 +208,7 @@ endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
 ifneq ($(src),)
-HDR_PROBE := $(shell echo "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
+HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
 	$(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
 	echo okay)
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-7-ivan.khoronzhuk%40linaro.org.
