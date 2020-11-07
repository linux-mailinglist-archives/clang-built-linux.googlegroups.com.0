Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIVYTH6QKGQES5J4BMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 677302AA3E0
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 09:34:43 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id l23sf4539286ybl.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 00:34:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604738082; cv=pass;
        d=google.com; s=arc-20160816;
        b=GuNIzEVzZdOw860pP19YMFwNWmtFu8hBqWT08qo+eDv9dqYCqGg2URN+pEfiBA+23T
         6J74ne7E1cR3rOrHFwqgfhdmy2D11YdJMjjWEVGW4esc9U65M1npzpYP7Up/qsMV+gTZ
         FbX3NQrKTniQq11GclBfNh44rUnNxeZhhjt+GUqM40XAvLQxzLdqsTNv0pGGmmsMCEJR
         TrbfdSXpKpo5WPkvjSqMrJCStEwq/kPy3nCwLHpmn9RdC48GmNuNE7yI/y4zz0E1f+VS
         p+Fle1R8PEy7H7DT86iUp2C8giVSSGTi5mcNkeTMtgGwPf5rfl6HKnZxhPlnxV7whAR3
         /0Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=PfTsWQ83tLAk/DDzoMJnXJzEbNRMOyr/oWcqetEt5nE=;
        b=uj8G4Lf/dlc04P0i7MlAxE34dNk8Q/mmKVymKiIbQGUUwu6x8e5tzsydRh5JEPrPZ7
         OpYTYwjrElxNTj83uzZCLsTpHM2IrQJThqrrqe9OpPO/O0V1vi4WZ4uEzjS3dLP4m7fk
         bpuvlduFfMARWLr1p9jLWETQIZ1s3Xahl7hWoSIv4n5sTMKI6OAEp9Tp2PqgTHjTyXxW
         bsWp38P2P57UzDJWpKDLZ/S6WCgi/Soy4JQ5UZT+5A/LHue8xcgDoNpf8Pf6DGz30PJP
         XeXLPoPOreloyV+TVyaKYalBEPmwxwTkHIIuqA+mfXIE+UmO1YPeJCyTbPAG+2Ke404B
         BQAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ljoBwQSY;
       spf=pass (google.com: domain of 3ivymxwwkahyhxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IVymXwwKAHYhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PfTsWQ83tLAk/DDzoMJnXJzEbNRMOyr/oWcqetEt5nE=;
        b=kM+s5DGS0XZF+tfYllMHESzxn4eJBOmvrOGn0jG2SwFIZVJdW9kEIj3uphoKYeH9nv
         R/CpIdVmPE4g+Kpc8epT1bjcSeyy9S3Cw19zw5EAnArbwWEW1gCoK9pED9YNR8zshyCr
         LjX00MfzYreQJgx0pooabRY9czfI/Cn8sLnutB+I2BMfqsaPzZtaWi1LQUFTVHGCuDAb
         HT8jxDXQy/wzoP0lg4sqzYldXaCynyRXb1p4HtSHlmpTjio4XVZQAxFZ/qx89/Z4HfQn
         eN3Fd+MzIOxCqGaH55lixHAd9j40SvVDG/mSqdLlgdtli8khKGqy5noeWDHkXfBN2W2+
         qG9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PfTsWQ83tLAk/DDzoMJnXJzEbNRMOyr/oWcqetEt5nE=;
        b=eIt+04dUZH5o75SMR7gtgDZZjz5oAiCWTZxY8g+kkRwNVFeBXzcVikU/1c+zkC88vv
         WJkd8DW4kZWFgJQYvXeGXxY95HZsVnkNYoNwL/4kOXpuf6eRmXB3t2aR29Na6mZCCfQd
         6DLdnEGlsaX56154xC7e4StkDWJ/FgoEauixTQM2rzLfIaf0FJ6pBDT7cXboWG6oBsjO
         iCEz5Chw4Sdj4UUNIkdyiTfVjsU6Tegj2SNlJJ9RuB/BHiWLRLEJSPdI3SN8F10CmCxz
         NrZeEgp1V2yEpIyPcB8IP+oPuFI42NWttGqR1VK1+EGsAbgI5+39D3HZuY/5TTsH72gQ
         wQOQ==
X-Gm-Message-State: AOAM532U3d78W1DH+ZlIslYDFy8W4VmdRVeMnIyHwMjMD7ZcTw9n6cxg
	L7Dsk1ZkaHRv7gCmtAmK3iI=
X-Google-Smtp-Source: ABdhPJxp2LSW3cYTPfXXAvowQz4QivPwx52RCOJr8P5M/54twDnD3/YpGLdVRSuVNFe6NEV/gfzo9A==
X-Received: by 2002:a25:cb10:: with SMTP id b16mr7998297ybg.459.1604738082290;
        Sat, 07 Nov 2020 00:34:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a28e:: with SMTP id c14ls1949284ybi.8.gmail; Sat, 07 Nov
 2020 00:34:41 -0800 (PST)
X-Received: by 2002:a25:c281:: with SMTP id s123mr6803234ybf.445.1604738081809;
        Sat, 07 Nov 2020 00:34:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604738081; cv=none;
        d=google.com; s=arc-20160816;
        b=LCopoffJBVTz6POXp92emPZwkEx+SSRlPJeyn1gb7TEiy32BvUcjjQ4Hm21lt6QcR7
         MvTm3YKrVhjhHHIzLb/Ml3Om1S/jT+z1TB89JtZsQ6NPPrsAZJL8tVKQO61EMKdd74IL
         XwOtKmGJhD6fg4XWWz4oanjzk4z/y+rrrZpr8JQmLZ6SUkoj0E7Xh3JwDAIKN5AUqN9n
         5QFL8SR/RCNmKqmCfQw78SzuQriOLPYqO3WIetdvvCJViDqqcKBIlM/mQ0MvOcQ9jFp2
         4Dlqsd0tATycwTRDp3nbHppIu3AKdrkpYy6HM62XXU1dG1CSOEkZw7w2d0+YAxkfep8w
         7zpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=Z1peopUQ0CXJcnmm3Y1iXQw/XLE0Jshqm+lf7SqAfcA=;
        b=Hmqs/tjoMa9WyMBCFWWXNIhfyixL1SmvgnFGlMCPPWVEwQuCsakp913NvnOU/jnXfO
         iR1nHpCy5RZMiTFfu/Yxd5Dxp5Ey4mmcQbKHsksjaC63USv63qNKSaX2B1t/BEnk/hXQ
         FwOuWS0Drw+/XvBinDhmXQzg5DWoB1hllp6XJVcX+UfjE3UiAOEwCS1wAo/BXmUV0Yr1
         e2OLgo0hHdkY6eoQXeeYcVevXC0PEcdL8PvTZv1JC0ZfBtbhWW0kwF7qBU340hII3QZK
         OKOAnRgcf5F2FkLEHvYMIn/eqyc97ijRMYXzZaAtn0n2IydwKoNu8mJURAQlXlBzewGz
         L/2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ljoBwQSY;
       spf=pass (google.com: domain of 3ivymxwwkahyhxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IVymXwwKAHYhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e184si203897ybe.0.2020.11.07.00.34.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 00:34:41 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ivymxwwkahyhxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id c196so4627880ybf.0
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 00:34:41 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:ca8e:: with SMTP id
 a136mr7465151ybg.101.1604738081544; Sat, 07 Nov 2020 00:34:41 -0800 (PST)
Date: Sat,  7 Nov 2020 00:34:31 -0800
Message-Id: <20201107083432.3175710-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] ACPI: GED: fix -Wformat
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-acpi@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ljoBwQSY;       spf=pass
 (google.com: domain of 3ivymxwwkahyhxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IVymXwwKAHYhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Clang is more aggressive about -Wformat warnings when the format flag
specifies a type smaller than the parameter. It turns out that gsi is an
int. Fixes:

drivers/acpi/evged.c:105:48: warning: format specifies type 'unsigned
char' but the argument has type 'unsigned int' [-Wformat]
trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
                                            ^~~

Link: https://github.com/ClangBuiltLinux/linux/issues/378
Fixes: commit ea6f3af4c5e6 ("ACPI: GED: add support for _Exx / _Lxx handler methods")
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/acpi/evged.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c
index b1a7f8d6965e..fe6b6792c8bb 100644
--- a/drivers/acpi/evged.c
+++ b/drivers/acpi/evged.c
@@ -101,7 +101,7 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
 
 	switch (gsi) {
 	case 0 ... 255:
-		sprintf(ev_name, "_%c%02hhX",
+		sprintf(ev_name, "_%c%02X",
 			trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
 
 		if (ACPI_SUCCESS(acpi_get_handle(handle, ev_name, &evt_handle)))
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201107083432.3175710-1-ndesaulniers%40google.com.
