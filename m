Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOXOYPUQKGQER3FKBHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE0D6D6E2
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 00:48:27 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id i2sf17475853pfe.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 15:48:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563490106; cv=pass;
        d=google.com; s=arc-20160816;
        b=ikupDBwybDqFIV+loqx/WKyjGEP6/v5vt19KsGOISl3kllwrkowKhAsMndA47YNXoY
         bTct2cKEGOYrSSiqCw0uNuhkhppLcHHPLQkjASH9yMAjXmMMET4zAf3Y7oBHeIz1HATD
         xThNvnBM6cC3h78EwXvMDb8ZJsm5qK1D7hvcEswWetz4WtD7XlUDe52suIbef7dF/w2k
         3KFtpYbvIGCzS1zvd8mMtLgM12cWfDzUcD1XGKCpzIsLxNWawHgDln7tUsZxVHs0YWbI
         OBbymAswgSVsiBvCggttnC/F2gGm2Jh/9y+xVbB9Gqxg6NAwWzp3lR3noNEa2NRhxFCY
         BT+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=kIwoOkBUMYoai+V9kEwODj+JS+AtekSbaJ8lNgY3BKI=;
        b=1J54SDYv4KNlJKnI2utW/dqKYvVO6wnB1Mys/sdSZbWIOTF6EQid6RMQ8GLa4jB520
         e7f9rkzUmgsaTjH1IZZHDxyZsO6BcHNvSII0ws+LyS/XmYAIYDI7YMGN6ZZjKX9VYu7e
         uHuxAUFqclCzW3rGG978PDT8F2a42P63Zt/m91/BKcKeIB5GfKX8pkmSLsl22HPs8Jl7
         +uBtbnUxM9sE7+5EAqTEiUKTcXPQqce0pqwCybaModWYFimdsZCyg1PEnjlWOkHHDmKx
         v2brwo28qKCT6pF91D3e9FG4g6k32QcLHp7Q2eRRpbEhW3lIs+qvTgTvZnN3C/DLlzuR
         zuiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=awhB07ft;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kIwoOkBUMYoai+V9kEwODj+JS+AtekSbaJ8lNgY3BKI=;
        b=i7I4ohoZBbf3rkU2UJOYH9Dz3m7B43FkfoYiqP78TubMD4d9i88PaUb5czXUqGaKfT
         2EQ535LD33qBBwUCIR9jANg9h4nrE8+IYvLimgAKZiaeuX7LwaSnbcoq8qbDMcZTFFbR
         9rT2zBv0sezbg13ePqgwKuGlyUTMzEi9gZs9TfoWDDA9H7WDz0psnaXpOpzWlj7lyHwu
         WX85mQWKEhaR47XrfyVeGB/KW2YdsPDAxgMHZSDHb44JxHsNJo+4nB7KhkQskLo7PT/w
         p7uWdn6BodqLoGGFhgCxiAlThyHI8ph/1fIioPlJU+KKUd8CCYkHJc6H459V29DkeSi7
         JtUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kIwoOkBUMYoai+V9kEwODj+JS+AtekSbaJ8lNgY3BKI=;
        b=N7IoSVGgrzpt8aTEBnAr2tfeMDl7Idoc/wKHdpjaPM+TLiHwZ7a7XTnIq+aB93Z3Mn
         cqvOUE+DD15o1hvVv5EQ0JcJ7QuTWQbH5s+xC016XSIyWHdurC9lWSD+vKsTvrZbd1aj
         ihvdrMjyrqvDHEWxQxCvV/strFbnigK4F7upw5wenepA81Opnx657PC/xvMER0Q4NMFV
         2tLiBbsXwDWT7KaXFCPXJQHYy8PZGVLqQL7FJxTDpd8pbHneWfM0Wb/ALdGunvV+i7+c
         Dykm1nGpuQxjBWhZFCQJlm1bZg6Haap8xzUV8UzYphBa736VCBVDA5kc2bhnGVHDpQ3L
         9pTQ==
X-Gm-Message-State: APjAAAVkS6ojXRc7ftBoGU0v9vxu/tpDASmnGbiLyZYhO2wFE79pqu7k
	ESg1uRqh/ZJgGy+JGO1UunM=
X-Google-Smtp-Source: APXvYqykoEGntqya8ghwECGcDDh1gU2sxVzdMC7/PpQSkOVtlhIpfoHFyq2ZjpwmL42oUTDahGTaUg==
X-Received: by 2002:a63:4d05:: with SMTP id a5mr46926837pgb.19.1563490106212;
        Thu, 18 Jul 2019 15:48:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2704:: with SMTP id o4ls9914016pje.4.gmail; Thu, 18
 Jul 2019 15:48:25 -0700 (PDT)
X-Received: by 2002:a17:902:324:: with SMTP id 33mr51615870pld.340.1563490105926;
        Thu, 18 Jul 2019 15:48:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563490105; cv=none;
        d=google.com; s=arc-20160816;
        b=W1xCD4yCM9MarH5kYt0i2jgfPBQ1F0MC4mI49+1riw5oCUDnT1Xw1xavdGElXg1PaD
         9fVdirCVeel03UIyNZMiabROUDCiwuGm8G3gm/APIDvB1gtDz7g+EmQf3LfKfpsHBLaK
         ucgP8OxWQlS1dFAQGmTInl19EKWoVSbDsAm5pYIXqI0ncLMkIjRXt2XWYLs1lO0x44DF
         74RyUaC/LtSXVUT0RkWnTFSwXYPCj+UPhNtvab78M+3FezU5YrAkbc3pN0Gvn2ND5c5l
         Z0PPBZvaVkJOv4MHGmE1nngCntoYrgRMr45iBW4zJNL+j4FT6OrzST3AV8mHND8w0lgO
         ObRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=9n0ds/vb5EiSxAoL7BU2fj6MP09AhiMeyEkHlFgfg28=;
        b=p9Xf5vQUPTSwz1y6HrQ8MXtypXhn2o8waRKzuZubDDbsHvw/SuFoONNns7lRUcBOTW
         v5LSj+54zvjeeS/6+aZuYAqtxt086RFo0VkfEKWH2wShXD55Vc+YZ3FKvbvFc7WZSUMO
         7cALDtAkvLdfGWxZo4g5WRBE+LUuvviRjIk6z+eYkyUgVY7rVsN7iJatCOCzR1nTDdsL
         mFbwTVuHvBIz0cDAzAveXo310+VtIPOWE/BedtZpJv3mgHVCOE0SHBbN6HBGNL1J2ZTu
         4iRJ9G3gwCfvOTqthmFkxtSgU9e/7Ay7iwwcTfyOjanW5dtSqvYemjAIIpsC4oB23zwE
         2E7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=awhB07ft;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id j6si1351915pjt.0.2019.07.18.15.48.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 15:48:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id f20so4305351pgj.0
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 15:48:25 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr19410596pgg.381.1563490105192;
 Thu, 18 Jul 2019 15:48:25 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jul 2019 15:48:14 -0700
Message-ID: <CAKwvOdmOrCKMXYhbA1363C2UA7f52MBSxeQPBtgWnkd+mERTWg@mail.gmail.com>
Subject: Effective Static Analysis of Concurrency Use-After-Free Bugs in Linux
 Device Drivers
To: Nathan Huckleberry <nhuck@google.com>, Himanshu Jha <himanshujha199640@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=awhB07ft;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Was perusing papers from USENIX last night and this one caught my eye.
Haven't read it yet, but sounds highly interesting.

https://www.usenix.org/conference/atc19/presentation/bai
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmOrCKMXYhbA1363C2UA7f52MBSxeQPBtgWnkd%2BmERTWg%40mail.gmail.com.
