Return-Path: <clang-built-linux+bncBAABBFN74GCQMGQEK5SEADY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A3339995A
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 06:50:30 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id x7-20020a1709027c07b02900e6489d6231sf2121535pll.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 21:50:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622695829; cv=pass;
        d=google.com; s=arc-20160816;
        b=EiHjBb4JCgTJ/u+E9hOXsp64iq+KPuuLnPk2glOYHu/uuLefSX3ZA/lD72eE+CzJ4I
         a1RXrmvrytWZy7xxFbzabIsv00eyI+wotNTOpnvvehM1nTJ6SF04t6SzCjf8YThDbST/
         KFtOqVQVOCrnPbGyRecio57ZPNyyIWAsotkX8Ivzi6XNUXnOWMG4HiOFVdn7+fUx54V0
         xAbGOhN0hJM4wy/XQyziMIXwyRki9Y/ul1I28iG4MWZJQaS2nBQu+dyfjqZSRW1ZCbvY
         FKB4KfHprFTsQBnuAe8t59V8DrGynNzESrU0EtzftvEBlkvw2XAloCf6W4im3H2vGc4Z
         9L3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:from:mime-version:in-reply-to
         :subject:cc:to:message-id:content-transfer-encoding:sender
         :dkim-signature;
        bh=SWETMFpoLxTfMz3iJWomIjQUXjmI9ppkN/4yztTKq2M=;
        b=yr8VZ7TNoj/b5vH6xnq6mbpTOqkyBKjMk5wkSMCRqMWRlT44ELmUQBCipifpZ327es
         lfqUb5CcrFbhrvzvPWd/2ZBnhvffAFkPum0XtpgRYDfUfulAcetCZqgLUGfpykEtsqx5
         4pJQX8KH6WmMFrO90Es76r7YWSiRm4OjiX/+WklQ+n+DK7+tfKM1FDFO/GG1G3puOkVy
         9Bu5nEjb9LCjHWYDiJRkLkocLn31lwi50yYBfzpNLFCQyBQiNBYd108NoJU25tcbr7i/
         NffKgCiCPVJQLCScfNs6pUTZQS0LQQxkJYzlVu9lkmSwAYduS0NvZ6uJDwVyqCBVBSEI
         fC0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wanjiabing@vivo.com designates 59.111.176.41 as permitted sender) smtp.mailfrom=wanjiabing@vivo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vivo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:message-id:to:cc:subject
         :in-reply-to:mime-version:from:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SWETMFpoLxTfMz3iJWomIjQUXjmI9ppkN/4yztTKq2M=;
        b=f5s1NE40iroZwgxELH37ajF0DaQdRLRKykgPyp4mQD8SqpxnvTwkLNAHpeoY/4iIKA
         eIQ++0OBChAJ+kezRyOkE5b5GTnPYF/TWXZaJEGJVKcAUpbg34phh6YraYio1MjCKxvM
         QPTTQ782avNcFFc1EaMiuRkgTiZic/J2UGEa3fHXRE4xOfjS37EkwMBlywn0ay6CPt/F
         IcHAFVgIapi9xRIk6R+s03kHcUW2O1Ot3kL2o6S1xZgqiGKSYpv1rKF+Vm0/K4/09B0s
         +EAuBr5jq40zSfG193XgBBQYo8cor9UbH+wArf+IwV1XD5JAnKV9jL7Q9CXwQJK75IGq
         wVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:message-id:to
         :cc:subject:in-reply-to:mime-version:from:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SWETMFpoLxTfMz3iJWomIjQUXjmI9ppkN/4yztTKq2M=;
        b=aUSKVxRhbQ0EXr4xBN/2Qn9mDnlQczzLv9G65xZo7GxrEN6PQHcGHAlEtwyLXUx6Q4
         Qcamts3fKXdDaIunbLjxu/inn/G8CeZftpa3tLFdMJEwdqC5qHjhUHUaGQ6sOnzyfFC+
         69SZ2OrXKWO4VhVRI1cmbEummcF6kV5pFJTg8Dy6Iidf9zdhc06Sy85ZnF4NkXnB+jOj
         bUBTuYjcS/+M0wuzkAL0uMGxbZTGaD1TaXJHSQEn+nbA1eZtfU1ESgSZn8bc/cO4uNaP
         vsIP/OGcNaNsb0x0pHdnhpnjZhzSp0My9wg6HcuugrimErkfuMzZlqQWkb/3uMUgk9FS
         aUxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TlxNCKIm16cphK62iJJknQxH5Av+pLRKW1VlQXnmbs633E2Rh
	Gpyvso5YHNZghIyHzsEpKa8=
X-Google-Smtp-Source: ABdhPJxQYwJPOU7RAAxFOO2T4DBXu0cHKm4sLbPEDUgkpIOKrLigxVmdJ0Hu1F8buqNTwNgQUC4DUQ==
X-Received: by 2002:a17:90b:f01:: with SMTP id br1mr21592104pjb.93.1622695829567;
        Wed, 02 Jun 2021 21:50:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4186:: with SMTP id a6ls1297570pgq.6.gmail; Wed, 02 Jun
 2021 21:50:29 -0700 (PDT)
X-Received: by 2002:a62:5288:0:b029:2e3:fd7d:267a with SMTP id g130-20020a6252880000b02902e3fd7d267amr30860291pfb.21.1622695829144;
        Wed, 02 Jun 2021 21:50:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622695829; cv=none;
        d=google.com; s=arc-20160816;
        b=PGhTVdMTsW70NqV08bzpZpZL1vScMtOsP83on2zWTifT6BlfRZ4/XsH+vWaWvPUdh6
         B/5gdDmKc61ftSha4WXiJeIhp87jmQKJlKZqrZLIA/8mDNGai9/EG7RtrqZAea2P6f1v
         SuftGvbxf8JT+0KVz6+kKhy0GoKb7zDCWbrC0Qx4XNljFuDcdWM79H68u2E/XlL1bZaZ
         9YqgvaUx/hPJ8s1CPXQBbeCIlGOS6TIeDDoGh0gYQot7Hlj45psJ7l/2jQcuFgX2FvpJ
         Uxm4qIUAH3VcSFHNNx0woYMN30MyaT2TbYtns7uD4dghphdyTP3P8qrUYZsChqQASs2m
         VIYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:from:mime-version:in-reply-to:subject:cc:to:message-id
         :content-transfer-encoding;
        bh=4y1CRG/U8bO2rAT4YIfq6jQE+HvyWG22Wxd62t/3/1Q=;
        b=mAg+9rr3zSDe65nodnBFIMYwtkVQPEw+ye6GxVyAcTbwCxSr1aXSGDTTxcu4veuPNu
         1BypeTFUagsD99pdWwu2HN7Bz9+I0C+TTNh6huXS77QL1YB9lwivB+YkIhKJUCd+vnAS
         pqwug3jzciG7gMigkFlEp8xDUpkOExXyrpgDQkyvJxu55F+TgXXhN7AIgdqFWzCUcIvP
         42kSWn+j0ZA80mB+i+ql7Renl8YtTcITIaY0iKFCrXHhCsinIJmJV2B1SuqlDLN0sUA5
         bmwzlXhbJYqr3xB1z4g5NNFTiLzcr2k69MDWinRjWT5pC7AKzKmQ9vExmCuAa6mhQ/2a
         xIYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wanjiabing@vivo.com designates 59.111.176.41 as permitted sender) smtp.mailfrom=wanjiabing@vivo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vivo.com
Received: from mail-m17641.qiye.163.com (mail-m17641.qiye.163.com. [59.111.176.41])
        by gmr-mx.google.com with ESMTPS id t15si113791plr.0.2021.06.02.21.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Jun 2021 21:50:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of wanjiabing@vivo.com designates 59.111.176.41 as permitted sender) client-ip=59.111.176.41;
Received: from vivo.com (localhost [127.0.0.1])
	by mail-m17641.qiye.163.com (Hmail) with ESMTP id 431786012C;
	Thu,  3 Jun 2021 12:50:26 +0800 (CST)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
Message-ID: <AEkAVwCrDqnnn92uf85TYapl.3.1622695826260.Hmail.wanjiabing@vivo.com>
To: Fangrui Song <maskray@google.com>
Cc: Alex Shi <alexs@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Wu XiangCheng <bobwxc@email.cn>, Bernard Zhao <bernard@vivo.com>, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com
Subject: =?UTF-8?B?UmU6UmU6IFtQQVRDSF0gW3YyXSBkb2NzL3poX0NOOiBhZGQgdHJhbnNsYXRpb25zIGluIHpoX0NOL2Rldi10b29scy9rYXNhbg==?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 58.213.83.158
In-Reply-To: <20210603034545.oe675lrtvtsvbedb@google.com>
MIME-Version: 1.0
Received: from wanjiabing@vivo.com( [58.213.83.158) ] by ajax-webmail ( [127.0.0.1] ) ; Thu, 3 Jun 2021 12:50:26 +0800 (GMT+08:00)
From: Jiabing Wan <wanjiabing@vivo.com>
Date: Thu, 3 Jun 2021 12:50:26 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
	oVCBIfWUFZGh9PTFZCQxkYTx0ZTEwfSU9VEwETFhoSFyQUDg9ZV1kWGg8SFR0UWUFZT0tIVUpKS0
	hKQ1VLWQY+
X-HM-Sender-Digest: e1kJHlYWEh9ZQU1PS0lLTkhLTUxCN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
	WUc6PhA6LQw4CT8KFRUVQkkOHUNOLyIaCxdVSFVKTUlJTUJOQ0lNTkJDVTMWGhIXVQwaFRESGhkS
	FRw7DRINFFUYFBZFWVdZEgtZQVlOQ1VJSkhVQ0hVSk5DWVdZCAFZQUhOTEo3Bg++
X-HM-Tid: 0a79d035536bd997kuws431786012c
X-Original-Sender: wanjiabing@vivo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wanjiabing@vivo.com designates 59.111.176.41 as
 permitted sender) smtp.mailfrom=wanjiabing@vivo.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=vivo.com
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

IAo+UmU6IFtQQVRDSF0gW3YyXSBkb2NzL3poX0NOOiBhZGQgdHJhbnNsYXRpb25zIGluIHpoX0NO
L2Rldi10b29scy9rYXNhbj4KPiBUaGFua3MhIFdpdGggYSBmZXcgc3VnZ2VzdGlvbnMsPgo+UmV2
aWV3ZWQtYnk6IEZhbmdydWkgU29uZyA8bWFza3JheUBnb29nbGUuY29tPgoKWWVz77yMbW9yZSBl
YXNpZXIgdG8gdW5kZXJzdGFuZC4KSSBhZ3JlZSB3aXRoIHlvdSBhbmQgd2lsbCBmaXggdGhlbSBp
biB2My4KCj4+K+WGheaguOeahOWFtuS7lumDqOWIhuWPr+iDveS8muiuv+mXruW3suWIhumFjeWv
ueixoeeahOWFg+aVsOaNruOAgumAmuW4uO+8jEtBU0FO5Lya5qOA5rWL5bm25oql5ZGK5q2k57G7
6K6/6Zeu77yMCj4+K+S9huWcqOafkOS6m+aDheWGteS4i++8iOS+i+Wmgu+8jOWcqOWGheWtmOWI
humFjeWZqOS4re+8ie+8jOi/meS6m+iuv+mXruaYr+acieaViOeahOOAggo+PisKPj4r5a+55LqO
6L2v5Lu2S0FTQU7mqKHlvI/vvIzopoHnpoHnlKjnibnlrprmlofku7bmiJbnm67lvZXnmoTmo4Dm
tYvvvIwKPj4r6K+35bCGIGBgS0FTQU5fU0FOSVRJWkVgYCDmt7vliqDliLDnm7jlupTnmoTlhoXm
oLhNYWtlZmlsZeS4rToKPgo+RGVsZXRlIFplcm8gV2lkdGggU3BhY2UgY2hhcmFjdGVycyBvbiB0
aGlzIGxpbmUuCj4KWWVzLCBJIHVzZSB2aW0gYW5kIGZpbmQgaXQsIHRvby4KCkJUVywgSSB1c2Vk
IHZzY29kZSByZW1vdGUgZXh0ZW50aW9uIHRvIHRyYW5zbGF0ZS4KSXQgc2VlbWVkIHRvIGJlIGEg
YmFkIGlkZWEuCgpUaGFua3MsCkppYWJpbmcKCgoKCg0KDQotLSAKWW91IHJlY2VpdmVkIHRoaXMg
bWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAi
Q2xhbmcgQnVpbHQgTGludXgiIGdyb3VwLgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAg
YW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGNsYW5n
LWJ1aWx0LWxpbnV4K3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20uClRvIHZpZXcgdGhpcyBk
aXNjdXNzaW9uIG9uIHRoZSB3ZWIgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21z
Z2lkL2NsYW5nLWJ1aWx0LWxpbnV4L0FFa0FWd0NyRHFubm45MnVmODVUWWFwbC4zLjE2MjI2OTU4
MjYyNjAuSG1haWwud2FuamlhYmluZyU0MHZpdm8uY29tLgo=
