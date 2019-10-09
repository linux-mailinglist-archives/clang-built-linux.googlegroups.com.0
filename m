Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBBMM7HWAKGQEINVI47I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 537E3D19B7
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:42 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id v17sf1629091wru.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653702; cv=pass;
        d=google.com; s=arc-20160816;
        b=iMl0FllaaTSF1K+M8BW/66gVTbNzbZ/ab9W182asebnIVXLOjrq+2Gs8XXzi6RzI43
         NaurycvSyb3bDR2sfW1uGO/+8SuhcTc0FSwWMcar9uuDNDxGASD6UAYfWAzDpCPxah/4
         kVyR4Jp6dkLTfAL9Sd45lMghjbQBaxmsdTPigFkuXFH0/TKl65dwe3vOyrcRPD6m7RxS
         y9lG0n0XEx/yMRrJTPUEzLcrF0Ve4cje9CXQHq5E7o7rf6PjA60kz7fjXy91JSXszLel
         djGVtZFy7B/TaPrAc7ob3zwjGtWwym8GtUHI9mP9gdp6EL5nNkOUcS8/xohAnXZh//xZ
         oQMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=T7BAqGTJU5sgWeQLYs7I7YEq0VSm9MmZj5Zn+hxuUQI=;
        b=t7k0Ex4lHYrj3IAGlCFHjEv94DCMi+pcNNe1h2CkPbVQw17jK4zW6hTi3MDMpD02KR
         R1V3fy4EpeJOKr3HWp+g4Rt2Dajvmcb9w7EM0ZJPGzuZU/FIvEPaJF47H0BwdI2EPI7Z
         YeM+q/xSWbLOfVHAqJNM48rQn9F3BbDHGgbec3/uFsAaFM7m4QkB1Wny+FFAXIpjyOEY
         t0l5kAI33fJUcTjMWjR1CY6FfQM5rTEFYEq2i9FDWB1TVny7Dq36aooaP8Fs5BlWhHU0
         ej8eXehAAADyZIKObsT4XJiTGUOoQBpgnWtNB3LhfX91rEZB091EQVGnGOIUXTBhpDFm
         IP9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="wpG/4/be";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T7BAqGTJU5sgWeQLYs7I7YEq0VSm9MmZj5Zn+hxuUQI=;
        b=g0ngXaXuH5UX/HkeAQFhIWwgp4tQk+ctHAmOGk8SIvM+EAoJuIjUGvrLcFaeaEXE4P
         CYJ8irSK1/rt8QGwypYLPMcqaAYpEHyuGGqZoVJZ2u4fs+aoIo+bbLbiI7R2PjkSDWET
         tnqPdqdFPR/GkVbigyIKrYo3LnJDxvEkZN1a45rsDMMAY/Z2cW+vzbRW1bveD1SwAYgj
         qdf0F5kDYX45/3N4b+yre4J0HpKOF56pSnL49jN8Fw3dNqvGMh2e+aw03igbJm6IjcrO
         tbEHQD/Bcb4v8gCJQMm020ZfmUJqtKexb24aOR4kLn90jRWVt1lemRWeXIYpWsCrcLEh
         aFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T7BAqGTJU5sgWeQLYs7I7YEq0VSm9MmZj5Zn+hxuUQI=;
        b=QrhlYg99BIjnLLK/Rw3G5416lHz2133eRKVT74byQWUf9hmvxhiZccmuKGg+PwjCf5
         /G0diLrJ4g55CKll1YYm/2++ee653/ZoPIoS/EHEfDxImo9h0V6JWnUcsy1PvhJ38UUG
         tL085EhjNExMKtpoH27Se+Slh8u9wCAkIDhS6XLIwNhyPzEeW0bji4+EPi5z87jnlRn8
         142G8ei+4tol/1Wt1eb/qUWi9/IIuZpKmhQLd4PkcaqF1mW54IgBuDahUgwxp/R15+hx
         OrzMLLIVSUb7AlUckUKenMBNw8w0WH+jEbG6VcXl67qyGyZzU08UQWcMfLF3RxKcL0Ou
         6xOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJdq3PC+cEjJkBQGLc/BeYiSMIIZofAdNe9lEu/F3BuGXd/vVs
	dqA7qqOVoqWjjmzVB2myHx8=
X-Google-Smtp-Source: APXvYqwbjxLWqlj9UGSCIBlKVo61/2HdjX5CH8jrFPOgjuqCzzD46bZe3PENHoPk1Mym9doSRE/l5w==
X-Received: by 2002:adf:de85:: with SMTP id w5mr4459135wrl.278.1570653702010;
        Wed, 09 Oct 2019 13:41:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c408:: with SMTP id v8ls579344wrf.10.gmail; Wed, 09 Oct
 2019 13:41:41 -0700 (PDT)
X-Received: by 2002:a5d:5705:: with SMTP id a5mr4739844wrv.112.1570653701578;
        Wed, 09 Oct 2019 13:41:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653701; cv=none;
        d=google.com; s=arc-20160816;
        b=YcAOGGBd/ia5sXlaBoYnKYT++5JNcVnDJMGtC1uJ1AP0FQCbWTgvO1zCKx9lmsxeg4
         QpSBNrQEjAivXUHfI2sMc4y8QcwE+jFdIeOYJgtRpt3d5iIDe5O+R0h7AgxAG9RFJzi9
         k6jcpp0IHgahU78zSr7HxgnMIPBIpLwcOzqAEPfCSJuqz9dHLR8ObqAg+ZpAIo6C0Ssw
         OdfntGklOjUbzjz0seCmBMIP+vKM8XdXWmXWZn7X7EM+qumG1A0ERvAs/953DlvZOEOC
         HyFHPrgNiBH+BPWAX0+kYVdVlbvv9Rj06iEAIhLN/a+gvmgIiegsiuU92+nJKnKhyXBr
         HzFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=2DEOdiE8/KIZvnfCC36ibwWDO7fSHTP8+q9sblSZNeo=;
        b=DhD48E9aFIz2ve7HCXoUyBNMLR5FGW/JjM3D4hAjG5FdKuyVj5FkoZyzJKLuR0vwba
         d9l5pVyNfHMaMn3puK3NiKMSlU6mD3T6nq0id+MYNLNpVzvrC98Su1wkDdNzpMSCv4e4
         GxbQypTnrmvAm1DW5v4fGcARRT+PKuNNuMlaQgbCmix/WysyIucWZ+y/upFBx27w25Vd
         e8D7pnf3xukVmYUAP0QMRkWWXc2WXEM5eJjhpoclUeBfQEfLsaCO5cePtCSQkUE+eJBJ
         tdMEiszEvdIL9hIrRxcfRWAs2HQYqyjwb0DAAGIW6PcBSsMQYpSGnJ2xyPXl7yJO+Kza
         MnkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="wpG/4/be";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id n16si211749wrs.4.2019.10.09.13.41.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id m13so3837756ljj.11
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:41 -0700 (PDT)
X-Received: by 2002:a2e:286:: with SMTP id y6mr3679786lje.184.1570653701016;
        Wed, 09 Oct 2019 13:41:41 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:40 -0700 (PDT)
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
Subject: [PATCH v4 bpf-next 01/15] samples/bpf: fix HDR_PROBE "echo"
Date: Wed,  9 Oct 2019 23:41:20 +0300
Message-Id: <20191009204134.26960-2-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="wpG/4/be";       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

echo should be replaced with echo -e to handle '\n' correctly, but
instead, replace it with printf as some systems can't handle echo -e.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index a11d7270583d..4f61725b1d86 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -201,7 +201,7 @@ endif
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-2-ivan.khoronzhuk%40linaro.org.
