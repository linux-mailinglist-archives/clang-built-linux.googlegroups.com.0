Return-Path: <clang-built-linux+bncBDT37EXSBAIOTSHPRUDBUBA4SQUD2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA1A4781FC
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 02:14:18 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id n41-20020a05600c502900b003335ab97f41sf340843wmr.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Dec 2021 17:14:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639703658; cv=pass;
        d=google.com; s=arc-20160816;
        b=M/ula+c8O/1gH/grGQk/zAfMNNcyPO8fSXUCyufkqz+FwZe8DliNF570dfUwmKmofu
         Jo92FNmmyzSc8Q2Z5Gfxs1JX7uZtYISmyvZ221WunsFpwqoA0SSTVJ1nzThI1j40senX
         VOg70n4lDRvRWJFJZmAfKA78XD1o2m+9eSL2oHOlQHMBsf0HqEulyczOsGwDLDFhlwaZ
         afaNqP5hQJacj4vgzhZKX2aDdAwCKdlsNI0g6S8XOoZQ9pSc1j/NXNoQRc7taoSygT4K
         EXSiTKTvb0tEpX5t9i7kw8N7idbirrBpbaIlDLBtffR5yJge1r+0/mz37sqxmUkKzv/K
         RHNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=2aPewuEdBU4m64UHH4x+5H/jX32gs3ZizjYAGr2u1M0=;
        b=EWzsSVnbIAxq0iXJXuHO8X3yb+YDjzSR9zX42ixc6wCKzr/YoYB+SXnYKVc6basQaw
         05+puZ0jly5nHmPnr6Hx4b3qT9F70bTekZHS0f6LWGGcIkf/DltFhla7VZ210csBMI9Z
         9BC1lozIfhkD45KPFSPVATFaWFJi1qfNKMaYUBtJSQ003dZpOJ1IAaGbYOuXeRR7kKXH
         2VscteZLiZLQHu1cSCVx1N0k8EPeMYQtO3Kmi3gqeZ891nb2kDrJYcQkzJtbYjzbL3/o
         3NyLB9sH5ueGWXOkrY4FSIR8M1XrUFal2CnPMr7XJSJcB3XzZzKm5uvIayjeOc6Ur1Ar
         p21g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=i61dVof6;
       spf=pass (google.com: domain of zhuwaojasoninfo@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=zhuwaojasoninfo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2aPewuEdBU4m64UHH4x+5H/jX32gs3ZizjYAGr2u1M0=;
        b=HDRHm0oyprdexgMMmKyfgpMAh0BmhB9KRIAT8bv2EvZKsSnbVNRZUOE1IQoD9wibLQ
         NLt0Gu2+wciW6anXqMZL20ZvnrZPCdqDQFuzTJx374HNq+DNoSwEAecu1jsDYBYPqy5X
         QBY8R0vhNFzGOeKrlDftl+C7PRgNrX1wNS2/68wvDWiVTbhipGPYbtvYzlJKdKxr+CUP
         ugYk+13Kx04yqJXSQChD2KofhwEJGn20jor65V70Yavdrfs0mtHjKcWFgqBUrQWPHXjB
         uN+/xr/5Wjs/Y25/prrzqM61QgnkyLt0cJJ0xUenq4xzzmcjLHb7a7A43/8zI1s1LdEe
         SZFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2aPewuEdBU4m64UHH4x+5H/jX32gs3ZizjYAGr2u1M0=;
        b=pmkBDmjvjOhY0y4LXT1yJxMms4mh3g7cHVtAGUwA6/C/hvlqRDRJue0x+MHpMQTN64
         h5oYlhxg6csX9ECHNP9OPkFgFROlE/hIQukF1TbsxzmZALSh8uWADB7QmDgGb7YWJRzC
         5jQ4QNAKV33U4aO7hsMavsMu6iA+84hGfJ6xQ2aA6rHxcOZYmLFDWkEYkd4R4EaRJQI0
         kRjFZAUca3goxoljwmNcJoy7ZSLqVCmodfcAZFxn/J55dS7WIrGrnhDm++6VjLyH6zC+
         2Ht5mIr4XMoTlOnuJgwPUrRx67/TTxXJebgok7H3znYWPPLSfMjskyjYJsG1eL8MUkmY
         o1iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2aPewuEdBU4m64UHH4x+5H/jX32gs3ZizjYAGr2u1M0=;
        b=ZrKoHvejwOgKM+ylQfTCmRGgLvX3JDtJRJMJXRyuD2jTtc08loZpY2jpluJCxGdy50
         YS4ItQgNsD4R2gMKZlX7WeB0kXheA69za6TGMbmH9kGTLNGV3Vw5EfWzO31den25b0Yb
         jIHj8wuVz7H2ywbM9+J/9A+J9hDN9DOtSUktEK2JMECqc15euF6cy92Fl8rcJXc5p4Je
         DPbMcE8TjkaoAbY4g9GBMDDfiSifl9dBTduWreVWdaYnDCHyDesCNnHpq4jVFzRI1cKo
         bhJW6vzZZBD4jrxJkU3GShCAHPGaoG4ywyyfMtcI+Y8kx9uXIUeadL7lRQAkL0NR6Yzi
         04rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aiux8j3xv/jSN/kVsAyKxSWxh9hatGfWv/XVvg7CcaXoKgS3C
	SIbmJ2h+6U+OKGlOlJJVAqI=
X-Google-Smtp-Source: ABdhPJyv5rLjHngDaj2YauTo4OzaCCePI7hRYLAqP9cgq6+kfyzIAz+ZkZu6DH4FlugEHuFluuyktQ==
X-Received: by 2002:a05:600c:4110:: with SMTP id j16mr6223982wmi.136.1639703658040;
        Thu, 16 Dec 2021 17:14:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d21b:: with SMTP id j27ls173799wrh.3.gmail; Thu, 16 Dec
 2021 17:14:17 -0800 (PST)
X-Received: by 2002:a5d:464c:: with SMTP id j12mr469199wrs.150.1639703657231;
        Thu, 16 Dec 2021 17:14:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639703657; cv=none;
        d=google.com; s=arc-20160816;
        b=dBss1Eq8hHcXUtilVNHEX6ZtkfB8Y1LUxk7VgLpZdPrglRiAbehr+LNqxj1gnrQzD/
         V9jsanzFNOiUxu6kAhVYzpVZCCbSL0kLE0HrlctTmVxVgzG4qXKAqV5Oa/fIfkNYqiN7
         QOtUDIDb305J7wSOa8Xcpij/iBfTMMQbI8urIsu+g15C3p9XFbhcfujv9GR+YHohQ16l
         EH7DVf5UnjCPtF1KYbGH/iY7AZa8iSd/3ur+jvYb0Blvfz7ZIK68d1iSpBCLlg5ESbTW
         uiNXN70D/tx6PS26WxtGqBrSV+PKi1LYYEzmdSgnRnazHfvw6dxYURf/Y2mhP2FTtjb6
         nY3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=pzTNKZFgTEOIyo2c3jdIvHY79QMTMB8IJ5P3NaJqyw4=;
        b=L3DCwQ4GtWgs1pMkBQ0I2OknQQXAXhZ+V3KqaSbRcA+p352QXBfjgrL5EcGFDSc9kb
         oI/doo9AauvQwnVl/LhqCKX+Rk4A8FfusqHZ5Av9ZZ40EaUWfFZA81eTQf5Hyn69tovj
         dUOUuLEIvG7ed4rx4S0L0XwPWPHOz4WzQQDLrGnUilzBtTfFYWQf3pTVwVtk0Ij6YyuF
         BUg1ZkZrLBPwvZuwdIDkxz3RcOPlPBD9pRyWO6BqRObegpjfoeemslu3bzgaPWuidaRL
         hSE/LBpO1BAD8n0Uk4gbue8e4JUo4JV4gT1fKLFo62dvnpGz/2mBOzCx4q+KrMD0OsKi
         iL2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=i61dVof6;
       spf=pass (google.com: domain of zhuwaojasoninfo@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=zhuwaojasoninfo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id z64si418156wmc.0.2021.12.16.17.14.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Dec 2021 17:14:17 -0800 (PST)
Received-SPF: pass (google.com: domain of zhuwaojasoninfo@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id g11so1436643lfu.2
        for <clang-built-linux@googlegroups.com>; Thu, 16 Dec 2021 17:14:17 -0800 (PST)
X-Received: by 2002:ac2:5e89:: with SMTP id b9mr713153lfq.616.1639703656522;
 Thu, 16 Dec 2021 17:14:16 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:aa6:cd8e:0:b0:150:7385:795d with HTTP; Thu, 16 Dec 2021
 17:14:15 -0800 (PST)
Reply-To: infoowenfermor@gmail.com
From: Owen  Fermore <zhuwaojasoninfo@gmail.com>
Date: Fri, 17 Dec 2021 03:14:15 +0200
Message-ID: <CAC=6uLu_dcQ8Y-J3-+LjoUScb-iPXNqa7gqJsem_63Fzk3fvKQ@mail.gmail.com>
Subject: Project Financing
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: zhuwaojasoninfo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=i61dVof6;       spf=pass
 (google.com: domain of zhuwaojasoninfo@gmail.com designates
 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=zhuwaojasoninfo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Dear Sir/Madam

We invite all interested project owners and investors to our project
financing programme. I am the investment officer of a UAE based
investment company.

We are ready to fund projects outside the UAE, in the form of debt
finance, We grant loans to both Corporate and private entities at a
low interest rate of 2.5% ROI per annul.

The terms are very flexible and interesting. Kindly revert back if you
have projects that need funding for further discussion and
negotiation.

Kindly reply to my email: infoowenfermor@gmail.com

Thanks
Mr. Owen  Fermore

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAC%3D6uLu_dcQ8Y-J3-%2BLjoUScb-iPXNqa7gqJsem_63Fzk3fvKQ%40mail.gmail.com.
