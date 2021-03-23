Return-Path: <clang-built-linux+bncBAABB3WU46BAMGQELHI3YZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A95345F5C
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 14:17:35 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id m5sf1810645pgm.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 06:17:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616505454; cv=pass;
        d=google.com; s=arc-20160816;
        b=PC4L3oq3io9Ulvn3bavjQLffpIi4nLKN+GhfgIr0pv7hn8/PDP3fCl+FEQktCX4XVr
         qH5ZLP6i2oWTfCBw3/Yp0shSawnMV1/rj2gBGdjK/OdNr/hn/z49QEKRUzdSjQ2YxCrg
         Vu3lzdzVSKjpTjGpcSQzSdnz/60r/4EQzPXnDB1+aOeQfbecyvx+g85keTK2XWasEh2H
         VWTELyEqZjfGPz2AZjfLen+mCEpPJnVg2umVgdxFTJXtoeId+dNoctOu7q9j2idt1yCF
         3S38+BRJvdHQFjuEMAEQ5A0WrFMAvsG6chmQUBAp5yX2DDaFKqncV6xJbtvMJzRak3wg
         Fl7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xkuur+jwveiqr8mmUg+hDAA1PAM4j3WRvkXoLik5lhs=;
        b=Z92JJMfFY/pUyGRf7YjpVOdZT+/d8F+i1owADGl50jS1LERn7/koOqUOx9gAeXpK8A
         ZdNm09Z9T5QojYMJy+O7KwZlw/VhdoU40KUDdMUYWBW/MdOvdEqoKc6wvycJ6B//uAGK
         5u+jBFjoQHYkyIDB0okBlx9DLj40ggX6ZfLiTNt0JUeasUbP5iMwyickQHmVmtcHGpBr
         QOm+F54fmjPIsIlpdHTppt+091SDrY4E/IgucOK+ZXd0xI/XmlGZ/Pvn8NjD/aKdCX1r
         T1ZoS6I2QQ+f5RAXX8mV1ys3b1neu2w/8ONA13A6kdrhwfuAQ0Gp+B6KgGsMelEak5Og
         9Kgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SsbsLhMz;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xkuur+jwveiqr8mmUg+hDAA1PAM4j3WRvkXoLik5lhs=;
        b=Qnt7wCSETD9XBk8pUSwW/+f5jM3DtaqBSdVTzDePqLrSREYVali3QykECaMKElb92P
         eiD16qL38ajamK1+5WBUhPW7rI7nVepw78zLVvyKemMbgZA1X2FIyRPBYQKY4Gj9NPF1
         IL2Iklk0PjbbEUM9pJTT4CKwvdyvg9HjnDulBh46vjzyVNIJJAZAaQD49tOO4Zj8k8bP
         /RbM0lLy7uVGVt4PiTAnRZg1mIltcJWDaoEi7DGi5RxmbkEmGo+tNF74kNNYOQXYYINs
         vISLf9btsBGEYMAuLhQeeOlS2JTWg9T15Iuiit1nfwk6PH8QMnArxf27UZAXGd8W/SMn
         ZIFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xkuur+jwveiqr8mmUg+hDAA1PAM4j3WRvkXoLik5lhs=;
        b=QBLhhVh5LEtch/5pLi7hE5O1CxcLyy4d29Nfpf/deGF0Tw8Mb5Gr1M+C/VC7cZ3/E6
         i7Kl3m7A40UVrBmsJ6+5nWVrylipaaEj9fv8zM6xqzjN2JC6WTzISIgiWOKQP4kotjC7
         pzRrCR4tVJgKyvKtwa5ycvV3eKmmPak496qLTqQ3KiEVmLIKDNoVwaTAzRk8YS8MhOdg
         avNeNwgbM4EvwtjeNBedMK9OcCEiMuCBKmUwQzMnvXDYUtI7ulofSkHui+QDyfUrHzIk
         ZJm/4+nS6sGwZC8vVYoUR3MbJuoKmfYi7N1UNhVzYIxlwy02QvxgrswqkqTKnIvSNmUQ
         VWqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TnCrTRGuA3lUTZ/0X6o+EYfwj11+BLGowCrCvJa6CbyficJmw
	uTouYSU8q6MzibGE3y+Nw10=
X-Google-Smtp-Source: ABdhPJwfKNQCGEZ42jGDMVdtgtXwKEEUf02tWFs2XRRSIkoSl5m4CLoJrpHhAOL4bLtD3DVC0dLUZA==
X-Received: by 2002:a63:ea4b:: with SMTP id l11mr3968533pgk.61.1616505454196;
        Tue, 23 Mar 2021 06:17:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5302:: with SMTP id m2ls5563127pgq.5.gmail; Tue, 23 Mar
 2021 06:17:33 -0700 (PDT)
X-Received: by 2002:a05:6a00:138e:b029:204:422e:a87e with SMTP id t14-20020a056a00138eb0290204422ea87emr4895892pfg.24.1616505453755;
        Tue, 23 Mar 2021 06:17:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616505453; cv=none;
        d=google.com; s=arc-20160816;
        b=rgS/oyf2d18AXhlGQn+y14FVgLeJ8xD9Nn7cPIDhnMCAcPBG3chBqnvTa73AuJ0N3I
         Ep9V8dd+TXImhj77x9vDhTrBHffVq6y6jhvOOjo0gXd8wGu4OGrmeLx+oJ47JtUMQM5Z
         IQwVGvUcDgzDwHmhx828AMe0acxkMoepItJrSvi+KSNQKzUvxqYF9Z5mulblXEn+ed3C
         Gvb7xzUvwSSlTU7ObBt7U+llv8HUPyxDcRPUJhi0DRcvQgHSjH3mPM8F+zdg8teA5OO8
         xsgmFTF55xVNGg3VodW8iywsXkNza3UX6sc7R5REQO6ddVYg+R/Yu7Y2wtyfbipnIAFT
         r7YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=5y+y7pWsB+OKtLoxGnj9x5khtBQ7UoihnMC908dQy0I=;
        b=LjKDWlqCo9Er+w3ye7Ucq0b5WQQ+y1oWtq417J9n96DhF16dMYr3YoCm1MOLo4hrDV
         wuNZoTDggeUHmH6kYZ5U6g1LDOXchZZUnkvrC6zzp6S0KyBFStfvxN71FDbOCYdmRxJS
         +RN0Q0Ud6SklrVNmVLvsBkqBvzDR6Q0Jt7Xtt4pJQqPwyLckmZAblzYU4q0tyLpEaoNs
         yAiLzN4gK2boDtPtz8APtJfERay4a7QXbnzTQOkFNlo2EGg3BkyCPNvLT18HttP92G6K
         tbDLo0uNgpm5RP4LEkf2SsqFOP/eJwaeSRHmvGafGFUUsca6cmCZJLFP2haMEVPwXRN4
         KBOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SsbsLhMz;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c3si177898pls.0.2021.03.23.06.17.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 06:17:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CD58F61878;
	Tue, 23 Mar 2021 13:17:30 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jeevan Shriram <jshriram@codeaurora.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] pinctrl: qcom: fix unintentional string concatenation
Date: Tue, 23 Mar 2021 14:17:13 +0100
Message-Id: <20210323131728.2702789-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SsbsLhMz;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang is clearly correct to point out a typo in a silly
array of strings:

drivers/pinctrl/qcom/pinctrl-sdx55.c:426:61: error: suspicious concatenation of string literals in an array initialization; did you mean to separate the elements with a comma? [-Werror,-Wstring-concatenation]
        "gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19" "gpio20", "gpio21", "gpio22",
                                                                   ^
Add the missing comma that must have accidentally been removed.

Fixes: ac43c44a7a37 ("pinctrl: qcom: Add SDX55 pincontrol driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/pinctrl/qcom/pinctrl-sdx55.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/qcom/pinctrl-sdx55.c b/drivers/pinctrl/qcom/pinctrl-sdx55.c
index 2b5b0e2b03ad..5aaf57b40407 100644
--- a/drivers/pinctrl/qcom/pinctrl-sdx55.c
+++ b/drivers/pinctrl/qcom/pinctrl-sdx55.c
@@ -423,7 +423,7 @@ static const char * const gpio_groups[] = {
 
 static const char * const qdss_stm_groups[] = {
 	"gpio0", "gpio1", "gpio2", "gpio3", "gpio4", "gpio5", "gpio6", "gpio7", "gpio12", "gpio13",
-	"gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19" "gpio20", "gpio21", "gpio22",
+	"gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19", "gpio20", "gpio21", "gpio22",
 	"gpio23", "gpio44", "gpio45", "gpio52", "gpio53", "gpio56", "gpio57", "gpio61", "gpio62",
 	"gpio63", "gpio64", "gpio65", "gpio66",
 };
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323131728.2702789-1-arnd%40kernel.org.
