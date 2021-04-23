Return-Path: <clang-built-linux+bncBCL5PDOG5IGBBYNVROCAMGQELBGYS5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C498E3694CF
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 16:34:09 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id v23-20020a2e92570000b02900bf20528209sf5863488ljg.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 07:34:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619188449; cv=pass;
        d=google.com; s=arc-20160816;
        b=VaFTVUCaHfPyh3IjSUcDPlevWMt9vzg1WjO+GQS7uhX/DDC0lEV8vpw4lhTKEjSt4f
         JfJMl3Bivb2FpcM2wNGRZVvTFEJHUe3Efxvag3rFyqGxVVaHehfrVKT8Zhu5XnQDt71v
         HAudvguyREWOaK0P9EhL4pZHqgUAR2lHxEndfLf8HHveWyK5un9PpcGCOswGERGB2imB
         imjNI0Y2zeoN786pjfOAafQ/JXu2Id6Oi10so+tUOF8/Bf0WRN7Wk29dUNUx2XO0MpBB
         3f/J7kK0ZcvbIiTqOeSp6sP6a2D2871c4KCJWeF10ZDSMafDs6d1vSVEWsZ1QzprG0SP
         KV4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=RBb5AWaTbRLJbGuGqCjNff1N3/UlQUc9gaRxFBwvvVc=;
        b=WV7S7P7OVRJGmQrftDwWrboLhd3fJ2gMbIsnrALRO+xJo72Sk7iKwvkgRPoy0fvd8h
         cAryfCbMLLoqwTlOvA7U8QsDbDkb1bJw1ox69QhrFPeWwo58aGvKB4fId8hpMa6KuFje
         hfXt+8FKzUB90VrXklLJjU357nVZoJ6SolBUFrPgOjVnruD/WoNvjIi0hLnfR6NHlAyO
         W4swliPDaUbKGhAK4EP9AIbGCICFr9tOOOYz7Etls4aGXbvrvzgts7kTj0ePGURxNACA
         Aw9nd+JdvFUHw6xVvI436/JhiCR7Urlps4cxCGyJQHh3i+nL2D4hnZFXkyEhsrxA7QfX
         rDSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EicjYtS6;
       spf=pass (google.com: domain of binetteseene24@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=binetteseene24@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RBb5AWaTbRLJbGuGqCjNff1N3/UlQUc9gaRxFBwvvVc=;
        b=UDLhmitNDKWcvwvxEjWf4y1f+VrJ23B0DUfDYU/diD3yAmY7HS6dmDLtZMetI3+lr9
         aZ8D1GteYjX3UjguxOVa4Rf04vgQZb0yJO3LSkK/pFFHlwzTVUvhe3e5wf6DM+f7phsi
         njAZRmSXUak8wizyhE/p55LXpkHOcE44MEHEh6tfX9/asFuQ/+Z4+/wtGsbWpGm4z/4x
         uXLVPzgkFOH1MpCX+b4szRl4T5No1ce3t8RX90MImUMNlaRJQQF+D74Iv1QMYR+UhOPE
         2Jmy3s5+y+XYXwKY9CQadhV+xp3y9XPBK46yBR/sj2Is8q8W4IERkg06LOgJrjUWGusB
         hMdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RBb5AWaTbRLJbGuGqCjNff1N3/UlQUc9gaRxFBwvvVc=;
        b=P4xM85Shxq1Uqcd7b9hFsmr8YAPftTpMJETCJHyfdmIEnfrskILJG+EC7NUxBLI9Mq
         WznXrFtwpY48pWcJ3Htp70TBeiUc2d/zpXY05sXEUWq1gKnFkyF8T2merezAsLYmY33s
         xYdDc4g5BJeu4CvxunFc72E51RdadE+h+LLI9R83um5waCKw8rCkM+YV/eSMFBR/nunE
         E2nL0USgHYXltU+oeE0KZrlwkTONVp3K1RTbddm7FO/3uJRWXr+aB+lzq2stTv6ZOhfX
         UXBYkyh3DqBBw9YN/xaSHnaq9Y1WjBd0F5RU85jJ5/ETBAoaTV0gWJ8nLs5I9X5sviTw
         dCuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RBb5AWaTbRLJbGuGqCjNff1N3/UlQUc9gaRxFBwvvVc=;
        b=pMc2hEVEBflo0WuNVhcjpEUtJpXsOTzwBTi8fuBrrHAyxhf6+nVrR/9oYFsnXt6b0d
         jV+5mbTZvnUxFh1aVG42UKazDu3DCLxPAcyw4JzQ4UiVc1wRicC9Fhfgoo44RsqHO2xf
         Tt2d22+nAtf2FTsd9KenSoXDMrUxaGbTl4mdxT4JbOfMuqmomThydrQ4zPATSrovxX/W
         DDcflbVrIv3iifChjyKP/mkdNoWcau2K5FTeZ8AQNbV7HzAd/3PD5mR1IK9jnNlbRqs0
         MIRFTVxE9tHKTgndXahQbuZAmOBGJlyWmIgHRm+cnposaTzepzEuT86aHw3T7cZbuOUu
         dBqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CKv7SUhBU6F+p52mBZq5fk8Zdr/gwC2YOQAVd1GaApA59aI+n
	XDZuFs72cXU+rEPjRlru2gM=
X-Google-Smtp-Source: ABdhPJwILGd9vombrv+m+4r57zFCuY5PWeLCc3/+RqHBK0dLXXhKZUCobDyh7gikMMwbKUQczxI/+w==
X-Received: by 2002:ac2:430b:: with SMTP id l11mr3181045lfh.614.1619188449269;
        Fri, 23 Apr 2021 07:34:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:507:: with SMTP id o7ls3129960ljp.6.gmail; Fri, 23
 Apr 2021 07:34:07 -0700 (PDT)
X-Received: by 2002:a2e:a30b:: with SMTP id l11mr2883689lje.391.1619188447872;
        Fri, 23 Apr 2021 07:34:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619188447; cv=none;
        d=google.com; s=arc-20160816;
        b=lQoUXGCxIJCrC0LUq7+2hzny/Y2jcR2KLqtvV9rvUCDJY01T6SopI2tdhFlcKn2ch4
         LRp1B+WOxhck2RmEO1ceuN8o9GBpweb67C4jbui5E4cBpA5dPo/t2PjOjTHNY3THUA7D
         oXzvHPpnnKUU8tHyjplGFeVlFHS1O1ZzpjQkZKJyO68FsUwe/O4X1RUPWVMxQ3ebHIjz
         nPu75eOjic+5LdlpIPuJd0e+IHUkGbluKPwMTxceeuTHLvk69mXaQFrRqCdaJxl0Aetf
         3c/C6Db2doLdCqJKuAB3bPHFQioIu3w8IwcqktLeyON/YQZ9SO//ANoYV6/r4ylSvQPo
         t4SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=wf9auZl+yx0ofnddTEC1aVwLdV/IOLqfiKw3PnxgDRc=;
        b=xIgPMBEroNxk60mZiR5bKK9cEpyLPplhqKnh4fHlOmQXoHh0G/Rjz0Ys2XJIfrqkT2
         5Np1oQ86Re9YLCZ8IguPExh06cmvILu71LvjuCnXcbD4OY3GlXMJGkyXgbSJioQUcKY6
         t7zAN/KCN+IuaLLSJj5dNl4UXhP8vJGgKAgnTndTOTsFKVytZP3Mn/1jKWBwVY3VtuOz
         wjW7hkkav++YfCYWHCgc0zKUYT0lG6ssqZ58PJ7XVWZLgsKEzUqqhkLw18ITv0wSAkVd
         zv5V2vaeirvcsHH34KHF+0aomZ/A8Gl9eZBnwC7Q1nOmci6gzoCFmyx+v5ck6PlCwXUf
         5p8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EicjYtS6;
       spf=pass (google.com: domain of binetteseene24@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=binetteseene24@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id b2si288277ljf.0.2021.04.23.07.34.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 07:34:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of binetteseene24@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Received: by mail-wm1-x32f.google.com with SMTP id y5-20020a05600c3645b0290132b13aaa3bso1356019wmq.1
        for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 07:34:07 -0700 (PDT)
X-Received: by 2002:a7b:cb4a:: with SMTP id v10mr4605048wmj.53.1619188447385;
 Fri, 23 Apr 2021 07:34:07 -0700 (PDT)
MIME-Version: 1.0
From: Karen J Brown <karen.j.brown211@gmail.com>
Date: Fri, 23 Apr 2021 14:33:52 +0000
Message-ID: <CAHk+2+ve6qKBswBZavuLC0ggkHgFHVvST9xt7emQvbL7wPYsTg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000003b1b9a05c0a4b0bb"
X-Original-Sender: karen.j.brown211@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EicjYtS6;       spf=pass
 (google.com: domain of binetteseene24@gmail.com designates
 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=binetteseene24@gmail.com;
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

--0000000000003b1b9a05c0a4b0bb
Content-Type: text/plain; charset="UTF-8"

 Can we talk please ???

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk%2B2%2Bve6qKBswBZavuLC0ggkHgFHVvST9xt7emQvbL7wPYsTg%40mail.gmail.com.

--0000000000003b1b9a05c0a4b0bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">












Can we talk please ???

























</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAHk%2B2%2Bve6qKBswBZavuLC0ggkHgFHVvST9xt7emQv=
bL7wPYsTg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAHk%2B2%2Bve6qKBswBZavuLC0ggkH=
gFHVvST9xt7emQvbL7wPYsTg%40mail.gmail.com</a>.<br />

--0000000000003b1b9a05c0a4b0bb--
