Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBLMZ77WAKGQEIP2WJWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 642EFD35CB
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:30 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id m17sf1689039lfl.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753710; cv=pass;
        d=google.com; s=arc-20160816;
        b=0kQgK8Rc0/d8uLBEBvdLYrhs+yEsyQnRQ+/tdLiFolIXKLTjNRHp6ORSUTTvCIq9vI
         1yfB1h74h50Vvai0Djxbt2D85ltqhk3k9aovYlYC+sxloS8ex5Zyq1mp6w8II9PnawPk
         YPGEu/crt61DBkLoAiUZV3RjX8p35rnYjEHVdEYQWQOeht9LCH65LOnc01coo4yXBOhv
         ggF9nfIGNKXZ1uWm13EXGAgQoVuHx0UxXn3SDBRhdUAKMK7FqBC+V/wLhCkerVLYoJ6k
         ykPLAf44s3hkheJO8Yz+Mllg5rSOQfltzRtXUYFJZdpq3cO/uXNnbgUARAFD3Z4GocuR
         FbwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=FQczElA5h9vWM50331pxZf9eQJsgUHQD0dna4lKK/t4=;
        b=mLzQrXCE6qmtNRP3Z9Lg8Nrnl7G/lGMpl6DSdp/3sWmnMXeg7AGPQqcz0RR5yydJ8E
         pxMf+e78B7RslgILX49d4k9wmhSwVXxSgSS8gpMNxFRcg9F8Y5n4XZx0yKBoEQ0Lj3RY
         kq+HaIUQCi17Bmg2JWQibsleexisRsajqnk5QHQLpiYhEBTRDGfQBGWqMvn0EOixwUlD
         uIUwQORiDRSqbsPwucY2lDZRtDTVpQm2wvB7MutOpK27mygAmCsGMLMt8GZqoVpgifVi
         OStcXCd2WHhzE2bKjXj4X7F796Uqe8Zh5lS/Ogew/OegHuPydvuFo6JAC3/KCd7Q/aLm
         8U4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=U8B4vmxp;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FQczElA5h9vWM50331pxZf9eQJsgUHQD0dna4lKK/t4=;
        b=axO7sHLGiBkV0lzA4+jOdNtyonrtrv3e9n6XxlXLG0vCKoK3Mu5StYRdHB8CxgYQe6
         AelKLC2mfFRcoLL52N74muO14tOIo0SQS9FQ4EKmgK8A3MM2lExvCFGCAXznB8jaI1Re
         Z4zO121DKNOA1TNelVaHLL4wRjV/pT/OnDbsrl0ZjEarY5EES/iPUVYV8eEdnANCmEqC
         JiEdVGGLk1dVkaL2keBDMC7qzdwMcv/omOsSWdL3AGTg2XiBjPpF6+oTkuaAn56RXFEH
         TPAans94AbGn3CWv72MrwBO7y/B6IA1mOXhfkqEWsWf7QDm+ns6zIpHjHUUG0RqdErmu
         fHhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FQczElA5h9vWM50331pxZf9eQJsgUHQD0dna4lKK/t4=;
        b=lVvZ8KmHCyfLXzAujCjo0E7FuRLmch5BJkhQpCK2VHrl+CUT7lLHA6vTy5JbOb2oCu
         7d7t9SOw3FBSUDNuNmj4BLX1kHkjyVlHvAVBLwPlzP/SGchMBokoNc/wY6n6nGiUQMeI
         qmW4thWqtyBvMeY/J5S6Ohwe0d2VOZOcHrb/xepVdit+4xNV7XLVo7yBFnChgeQ99stB
         zPlOdYMiu2++ZVZjbnIDwq9ECUg2arTjbqwcAYoy4t5zfKQ9FGBTCtLE1FxJUMsyxMuh
         dAFXa/h/oLsLreTyqpJCasNm1QCoIsmgH84Xtp5jukGC5z8DJKjujn7L71gVHX+Hvqir
         uAiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjg+zu9ghtDp88SklPJCQjGgNH/j4GNWPGCy5LQ5sTKfH3eLJX
	6/peKDXjkRvMhjyIGtC3c/c=
X-Google-Smtp-Source: APXvYqy6UviktukBPkTQH7LHnD8hniwDrIp6l9TDBsnpj9T2qNkZO1YwM/iy8GeZ9Dtk4KAv53yoyA==
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr7987068ljc.186.1570753710014;
        Thu, 10 Oct 2019 17:28:30 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d44:: with SMTP id y4ls738991ljj.4.gmail; Thu, 10 Oct
 2019 17:28:29 -0700 (PDT)
X-Received: by 2002:a2e:8893:: with SMTP id k19mr7963522lji.199.1570753709302;
        Thu, 10 Oct 2019 17:28:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753709; cv=none;
        d=google.com; s=arc-20160816;
        b=kIwlUd2+FhTaxJLiIgM5ziGkKEJqeqWOZJ1n3Qxdf6xCjvo9LfBT3x9/c7ZmfRFTZb
         VFcSzAhf4y2FlDNxtY1b2OcGzvgk/pxmtVoj8AXT5dvgEF/uUK0ZGJ0Mckr4b4P82vSz
         64wHJc7ZqskKJ+XI4BJtXQmajoZRO+UeZCLlD8l0AdQlWkdEVMA9w4+KsdiyJJr7gKyb
         Gk2KjURWAB7tvlclqnrUD9A7kdq8d6RkFxOQPn0+BtauP6miVoJaDLo6mXS+yFvN4Hhm
         wAEAikciHn/a1oaHmBPIlEbO2fJ8khv98u0DVxluRoywUKBRY7JemhrX41Cdz2Yj7Lii
         n/3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZXAfjdX+WvsCZ4Putv4iaBG542bdy+GxK4sst7rF5S0=;
        b=xQ72AlIMX3w87IqEVPTkzddiu79Ps1QfMV3owTgKYw6Nqt4URFL7kL0ofie2WDZzt5
         Qgoxuj0JYxVxBTgi0hP/3aD8EnzVp93tZNDWNuJVzXNUBhuiXbg4syFpQu+Yd5jpxSlS
         +AmuHowCkMFRNFSQZE5rxqX7VZJPHdVRiFd5dw83HK6/LAfmiyzzgsrwk3pJvI+fGGYE
         zNgzZgHkXTB/WALrNZ+y67UTFUq9TaCn9MZdmdkJdQInxLjxtZ8NsKR4tm3vNYkzjVkj
         hsGa4HqyUP+wSlOt8/Vaty5eYzc8rBVO8X9R4U2Hh84w9vYAnhLJG7ti3fsLC50xMGOi
         2fMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=U8B4vmxp;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q25si87167ljg.5.2019.10.10.17.28.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id v24so8044898ljj.3
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:29 -0700 (PDT)
X-Received: by 2002:a2e:9890:: with SMTP id b16mr7075689ljj.153.1570753709112;
        Thu, 10 Oct 2019 17:28:29 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:28 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 06/15] samples/bpf: drop unnecessarily inclusion for bpf_load
Date: Fri, 11 Oct 2019 03:27:59 +0300
Message-Id: <20191011002808.28206-7-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=U8B4vmxp;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-7-ivan.khoronzhuk%40linaro.org.
