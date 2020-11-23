Return-Path: <clang-built-linux+bncBCV7NVMH5YOBBCFE5X6QKGQEAYZD5ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id A55602BFFCB
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 07:09:14 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id j30sf528380pgj.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 22:09:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606111753; cv=pass;
        d=google.com; s=arc-20160816;
        b=GaYqFo2RHsIgrYiEG200Ms7phYEArURr1ql6CFyhLFE0q9ZUi+6o3sSHEpqlufZhwv
         DCNbJHp1ESFm956rGSv3ZPV3PLPjNmp+T0Ztsaa3O2hK9hmSlA6uERaVtiVJmVQ6ZsWA
         b1d3WvgzsQJfYqC6qZkGI7tUj6FTeaOy5LM15XJJW1yFUet6QZ4h1+KKijYqOx5AG70h
         n/9/1SlncwhjEBmkjdso+pD4dG8an/C2DMw7gN2E2hK8Fd/Lf+AAawfY+Xb55+TzET6C
         PK9PTI0xi8fRfae8M7oRb/Q3Zcu8VbW9yz0qh/iP2eGDCV7cuFojAr/xh4/ce3cl4OmG
         ZJdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=hqK8dOkTfT+XtEZ5iSG+/RaU/pzGbd3HI2Hbt0vHcpY=;
        b=CzU/Ls/SJZlmvf39Xm9SW68x4olWCioR3gXvHH94fEoCBwRtKDUL3f5Jm/MSUIBz+V
         1pAqp2c83hrdoFju8RovIsy/V34PDowgRdj1SSPqKpDqDyQexpXMgzEklmSS3kxVFM4F
         oA1xcCmx8uMI9MLQ0rIlUc274JlPY2VnrtQTRjK3dYX/17tb2r6wn140sqtvNp241Ydj
         rLtRMNiFyD9TzaYmKqm2cHNQp61FJR0zUtQ9AmgvAvor8wgt6mJP0mDxnUvw1klzwEUb
         xgLrceqZGlMbAOgZ1H+qu9ZiuVyxj3Z56m6UgAaypuHvlMqPhkzrFPpfOYG3B0pkaF+E
         H8Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=npGAhEbP;
       spf=pass (google.com: domain of swpenim@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=swpenim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hqK8dOkTfT+XtEZ5iSG+/RaU/pzGbd3HI2Hbt0vHcpY=;
        b=fj2j9Jayyc96RHHMc1FtNA/XAaRL4ebv22U8tLQLRPX2D2F9DIQexx3IjiBgV2pHnR
         c3aq5L2oyK5l/hnur5Jy9xWoNaQFGm+n5zpT6d14evJKgYazCznfPyRP3lsP+M/sVomS
         WwGWxATM9MR2sHq4st5NnqSREpYVXADs/e5e008J6reMI1iW8FU+jwm7JGwTOyfhvswb
         GIDO4RgBd+C0BU9vF1M2+diV5Jh4Sq4u6qopNP/b8OubdQH4rxMzVUamaRTfj6ScOP3q
         eahRzTLCER6U6ZeUHI0qM7KTaRjkBdSSQzpFcCzhs+CfN9G50FnCvkvthbRlrZZr8VKA
         PuZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hqK8dOkTfT+XtEZ5iSG+/RaU/pzGbd3HI2Hbt0vHcpY=;
        b=F7DHVdTF3fgfnMSupA3OkhCC/PBqobmlLkk9ST4zUh95EA4uzJ7C8W4aloak5BeNzh
         7GFvXYLZyO5C03Cryjqlwj/XK0MzU9q9S7Zg3NOpva553KptTZuaZZP4//edCVUcTEBc
         kruz3yfdXCAkINLaJDb9i4ITDBb8l7Am3YnXYdWvEa1B6xZi4Z92z53vIOzYZxhy+imA
         oR81x2sPhno4DqkGjSCk1UVTF5U92GSYzNzGFPtNiE8DipEmrCBeHexC5GQa/wLjp+y6
         6ipE4NJfTen93eGlq1H+JwPO9nkaloW76n0iCwN28szOnfQbtEhJuXq7xF/n0GrKMw2J
         k9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hqK8dOkTfT+XtEZ5iSG+/RaU/pzGbd3HI2Hbt0vHcpY=;
        b=fx8KhE4clHXDh5n0ISipcOn8jahK7Daeo5v6KdMrQqMctBT3ElL//yyFZvL7sqg/dF
         LOtq+oZOUpfCd93OLN4D9bH2HbYvU5i6jvpmejyXSth0uBuYm7Tkul3vvUtvURlm5kfT
         zaApU/YXmCQ10i0oykrVjx3yQlZUidJZxU5LwZ6A0BGhDA7XOabAnH1qFoV30VeK0+kN
         D2ME6RB3jcurfot6S1Ms8qJ/ncBTPxEf5Bbtpva3hiD6UheaieCgxOY01Ai0wpD164Qx
         bE5liNwbUL0f9kNrTGCUt4ZSJqhlHb+dFMAt+Invg88WnHS1ER7WVwOSVn1uqbx6FB6h
         iyYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nfoPHJtl84a1E/Gg+lHbaW2qqAYo1RT0+Cj60jlaIaDNLZtvB
	iRywzGvyzniESR0QKd4XNF0=
X-Google-Smtp-Source: ABdhPJzJ588amBFQr+2jnSGNGHeF3udfHnhz5xtQcWwYaDqnk4vPECKL4AfdqVZarrGUhvmo+4I6CA==
X-Received: by 2002:a17:902:a415:b029:d8:f55b:5e9b with SMTP id p21-20020a170902a415b02900d8f55b5e9bmr21772835plq.6.1606111752804;
        Sun, 22 Nov 2020 22:09:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a8:: with SMTP id q8ls4691000pfs.9.gmail; Sun, 22
 Nov 2020 22:09:12 -0800 (PST)
X-Received: by 2002:aa7:978d:0:b029:197:fd52:ee48 with SMTP id o13-20020aa7978d0000b0290197fd52ee48mr5285137pfp.13.1606111752185;
        Sun, 22 Nov 2020 22:09:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606111752; cv=none;
        d=google.com; s=arc-20160816;
        b=Wom1Vyu1QEHNq3E5eqatid4BrSe3hEGYNUx9Foo82HpDv1sCOHcOeEfEfC6gtc3QZ8
         1eVhVoP/X3dZuGTtmegm6rV7UIk4k7Jfp/ZSMm2Qy71AcVzLwqeVTOj4gNMlMNhwDjGV
         lF9wO60lQn0pkWCOEnMqrAm9Xr91erGoSzepBK4TNEr6aLGL4kzxaM85JXpJiitv6FUk
         dmvTldH1PJnDtH6RpOpAkOC32hWKQgxyMDHcxNSQiJ7SGyFDu3wgDW5UBhT47ClxKaK2
         UXmAdeag3oEycgLMfdxoPzcNEY0MOwt9Wkrkl6j8Oyg3J5lIRjqLYlAAO/Ypol05B8TS
         RWDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=SmuZx63R3Wxs7hJGQUUWgVdS1L7huA/xdwzkOdesZQA=;
        b=o9OnwAsb64BxLTKJ/f6X83RZ47oLpYOdOTAjlID1o+0ZPXBZ7+R11WWSfA84oA0Xl6
         WEJyQS7CBHUikHY9cYfDm1a5VzQX8aZAA983r7x1p1yL5x8VZQa6MY0kGyrtjqH4Hamu
         nx6CaD0i4xUcvyd7krL6TtLsu/m5+Nnyjk3ULn8lzFpuqDLDOeQ0Le9Zfs+gP043xN4p
         87XkXZz76X++p78i1oGCFFwYrU+pSdosnk1YoH2cjeo4VabsaDQrSvPs2Y/KAjoWogNs
         NC+1VXEQBrL3i8haulDNeu89sWNEzxekAQO1j97m+UTBvZFksSnoQe7ETQsgcKCue+Ln
         /Rrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=npGAhEbP;
       spf=pass (google.com: domain of swpenim@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=swpenim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id d2si823548pfr.4.2020.11.22.22.09.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Nov 2020 22:09:12 -0800 (PST)
Received-SPF: pass (google.com: domain of swpenim@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Received: by mail-qt1-x82c.google.com with SMTP id f27so3099953qtv.6
        for <clang-built-linux@googlegroups.com>; Sun, 22 Nov 2020 22:09:12 -0800 (PST)
X-Received: by 2002:ac8:6f58:: with SMTP id n24mr28011290qtv.236.1606111751262;
 Sun, 22 Nov 2020 22:09:11 -0800 (PST)
MIME-Version: 1.0
From: Antony Yu <swpenim@gmail.com>
Date: Mon, 23 Nov 2020 14:09:00 +0800
Message-ID: <CAC5oF3XFeKqZOMC4sRiFATfaSSUq48TGwYYOY0dnF8HbDdty6w@mail.gmail.com>
Subject: [PATCH] ARM: fix __div64_32() error when compiling with clang
To: linux@armlinux.org.uk, natechancellor@gmail.com, ndesaulniers@google.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Pen-Yung Yu <swpenim@gmail.com>
Content-Type: multipart/mixed; boundary="000000000000677b5405b4c0084f"
X-Original-Sender: swpenim@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=npGAhEbP;       spf=pass
 (google.com: domain of swpenim@gmail.com designates 2607:f8b0:4864:20::82c as
 permitted sender) smtp.mailfrom=swpenim@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000677b5405b4c0084f
Content-Type: multipart/alternative; boundary="000000000000677b5205b4c0084d"

--000000000000677b5205b4c0084d
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAC5oF3XFeKqZOMC4sRiFATfaSSUq48TGwYYOY0dnF8HbDdty6w%40mail.gmail.com.

--000000000000677b5205b4c0084d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAC5oF3XFeKqZOMC4sRiFATfaSSUq48TGwYYOY0dnF8HbD=
dty6w%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAC5oF3XFeKqZOMC4sRiFATfaSSUq48TGwY=
YOY0dnF8HbDdty6w%40mail.gmail.com</a>.<br />

--000000000000677b5205b4c0084d--
--000000000000677b5405b4c0084f
Content-Type: application/octet-stream; 
	name="0001-ARM-fix-__div64_32-error-when-compiling-with-clang.patch"
Content-Disposition: attachment; 
	filename="0001-ARM-fix-__div64_32-error-when-compiling-with-clang.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_khu4tefr0>
X-Attachment-Id: f_khu4tefr0

RnJvbSBmOTkxNzdhZDIyOGRkMmZlYWQ2NzBjZDgzYTk4ZTQwODRhNWI3ZGU2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBBbnRvbnkgWXUgPHN3cGVuaW1AZ21haWwuY29tPgpEYXRlOiBN
b24sIDkgTm92IDIwMjAgMTc6MzE6NTIgKzA4MDAKU3ViamVjdDogW1BBVENIXSBBUk06IGZpeCBf
X2RpdjY0XzMyKCkgZXJyb3Igd2hlbiBjb21waWxpbmcgd2l0aCBjbGFuZwoKX19kb19kaXY2NCBj
bG9iYmVycyB0aGUgaW5wdXQgcmVnaXN0ZXIgcjAgaW4gbGl0dGxlIGVuZGlhbiBzeXN0ZW0uCkFj
Y29yZGluZyB0byB0aGUgaW5saW5lIGFzc2VtYmx5IGRvY3VtZW50LCBpZiBhbiBpbnB1dCBvcGVy
YW5kIGlzCm1vZGlmaWVkLCBpdCBzaG91bGQgYmUgdGllZCB0byBhIG91dHB1dCBvcGVyYW5kLiBU
aGlzIHBhdGNoIGNhbgpwcmV2ZW50IGNvbXBpbGVycyBmcm9tIHJldXNpbmcgcjAgcmVnaXN0ZXIg
YWZ0ZXIgYXNtIHN0YXRlbWVudHMuCgpTaWduZWQtb2ZmLWJ5OiBBbnRvbnkgWXUgPHN3cGVuaW1A
Z21haWwuY29tPgotLS0KIGFyY2gvYXJtL2luY2x1ZGUvYXNtL2RpdjY0LmggfCA1ICsrKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2RpdjY0LmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9k
aXY2NC5oCmluZGV4IDg5OGU5Yzc4YTdlNy4uODA5ZWZjNTFlOTBmIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9pbmNsdWRlL2FzbS9kaXY2NC5oCisrKyBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2RpdjY0
LmgKQEAgLTM5LDkgKzM5LDEwIEBAIHN0YXRpYyBpbmxpbmUgdWludDMyX3QgX19kaXY2NF8zMih1
aW50NjRfdCAqbiwgdWludDMyX3QgYmFzZSkKIAlhc20oCV9fYXNtZXEoIiUwIiwgX194aCkKIAkJ
X19hc21lcSgiJTEiLCAicjIiKQogCQlfX2FzbWVxKCIlMiIsICJyMCIpCi0JCV9fYXNtZXEoIiUz
IiwgInI0IikKKwkJX19hc21lcSgiJTMiLCAicjAiKQorCQlfX2FzbWVxKCIlNCIsICJyNCIpCiAJ
CSJibAlfX2RvX2RpdjY0IgotCQk6ICI9ciIgKF9fcmVtKSwgIj1yIiAoX19yZXMpCisJCTogIj1y
IiAoX19yZW0pLCAiPXIiIChfX3JlcyksICI9ciIgKF9fbikKIAkJOiAiciIgKF9fbiksICJyIiAo
X19iYXNlKQogCQk6ICJpcCIsICJsciIsICJjYyIpOwogCSpuID0gX19yZXM7Ci0tIAoyLjIzLjAK
Cg==
--000000000000677b5405b4c0084f--
