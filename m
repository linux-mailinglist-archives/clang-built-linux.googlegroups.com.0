Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGWIU6AAMGQEULGIA6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ECE2FF5D9
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 21:29:15 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id v82sf2518515qka.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 12:29:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611260954; cv=pass;
        d=google.com; s=arc-20160816;
        b=PtQk/gEuLGyOBHjumM02GEmzWj7KAOAB5e5nmpRGk0iHhBqeRF1ZH7clZGosdIYfIC
         SjMH/qowT+tS3Zo/Our/NrxnUrcVmcdR+Wlcar8Pudda+1O2vA8Lc0YQ1Rw7v6JFxyII
         zOB7UClwHtGWtvPHZdwrO34pgEJdCpaT1vWAeR0zb7meUe6T5NyoyOLzB/yXokjSiZJl
         ykDLC/8SrG59G9Fpd8JOVavQlsm2vw8mxgYPAsd2xhwrk9L2G++tXlSOuJtgL0r4Qkpj
         ZISEohr2JhZFejjvOXRYjLlYcby3A0aOfRiK/hXHaz698PpcIL6O9Ui7ov7kALtcWNZm
         9VgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=Wf43sSsipUCxx4Spgh/kaHHLsgqw/OfDQsejPkew0ng=;
        b=duP95RlLy1O9cO9L/rj0E4evDf4X3m50Nvc3A7ehCVQoigD/vLe6Jr5KdVzirT5s4b
         BGK2udYPFfAOSRdmdBM84EY0nOiQ4A4HR7HuV6c3++Wd2yziDG7lp2P5nreF/Zf2NBKB
         oSBFK4ZMPHBTzoCjQPjQGMH/72SSD/3XEdfxlkPJGFrQWsmB0PCKsuwj87i1Qlwz1vrb
         9eqJthg/02cTdeVO1G9Zn5CgPVFJpBBfrvD2OboSJqcFPGar7K9hc80fF2T4XshQLsTG
         7Ik+NG6d9/JRVn39j7AkGFQHq0mWG8infE6nYo5CbTIXZTCwGT+rkBufKYjeqz7odtNM
         ZI6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CUphImj0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Wf43sSsipUCxx4Spgh/kaHHLsgqw/OfDQsejPkew0ng=;
        b=cGIteEETXwjD/QIut51Xwq4yK3j4Pv29MzUiwox7hofa9/VDaZJM3Bw7zeSvJHe4b9
         tsgvmOaJWYZ4FbZ27zcWtwv+qq3RVN//XEfWczPGzr8KHiRicb1k1taKuqlRW5Lt5y8+
         kuyB/4g3aWJxlYuZTlwjxpfaoKTbYgQe9tYkDeCZUUFLt4kYLfyuqEqkb8hopZRSSXiQ
         e3p7tfd7EOJwXUFAZDq3Ik5l17gWQg0TQ4sxHuODIxlTLf1WJhj3KED43SKcPZJyl/Lt
         lExo9o/GT91pAfulFObxwYLjH7dvYxauzaWxxIWsnC6bko92xWnvT5Ec3bTbDHsgOqLm
         5Upw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wf43sSsipUCxx4Spgh/kaHHLsgqw/OfDQsejPkew0ng=;
        b=ZJj/YXKjYUb32FiwVjtfhaoMcj2rQtBAyCWV6YCDOxdYI4UAbwE61galAbegIf84eb
         CHb1f/9jG31S+y3ZK/NOpugTMAX2GiH9WaWaQYjgOlct0DCVsi1ovbOwpCETXzgcvKrj
         uZBQtnFqs0/L4vQSj7f31H4vtfFC61l3D5DVpS0R0xfGP5bmEpVPoKnKQC9UlKFWgZ87
         8b2DBMNttATEzJur1t+1DMiQwYGSihgoDSA0IfXSKgpQ+JKdPrFOTCmmsSQMpKfXjBDN
         Kki8HLHrqErbSOo/FCHeict19NJNLpokJ1DOdITTABbVzSCaIFa1Qq3Jq53vWm3Xxkn+
         +e6A==
X-Gm-Message-State: AOAM532JshM4t1Ue5i5r3t2NsXSwN8+SIZHZAnmpnXrmzDxKIK/sikAe
	GRoNUZTxZTB1/fpLxLgEP70=
X-Google-Smtp-Source: ABdhPJwhxrWtMmSqtYQM6nCosYOKzua8opeS/PQQ13UZmWnhhz2Sn2aa+LKdUTTJxiWufO3T6tlVEA==
X-Received: by 2002:a0c:d983:: with SMTP id y3mr1385137qvj.25.1611260954352;
        Thu, 21 Jan 2021 12:29:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f5c7:: with SMTP id q7ls802097qvm.9.gmail; Thu, 21 Jan
 2021 12:29:14 -0800 (PST)
X-Received: by 2002:ad4:580f:: with SMTP id dd15mr1327729qvb.40.1611260953990;
        Thu, 21 Jan 2021 12:29:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611260953; cv=none;
        d=google.com; s=arc-20160816;
        b=nUMYbCgVvIRAcqq4h8L5lRLbY/+VlW1dO5ZB8n1szSijVzaDFODTNjx6mMjOjAKqTu
         0JMNMqTm+jTiVOTKhsCrKFjFRy9e4KKilxpSbwvEg9PUA3USY/jmEbvpIPvEU5JjCY5L
         X0KgPZrk7hozzd01cIzHtzIvzQOeQyu39/FEVFJYLv0FqZYKEw4NkyVdEReXjw4HiabK
         0tkeBKrbJoItSME67U9A/z5YpM/ZEYEgQFEV0p/h7rQX4C9ai9JqsM496AHlwpah2zIy
         cKbCg70cdxbjqLrAzpuxkChKoCOA6OkklZarIA0RcsYhBT5uMpSJ8gnRnzc6UeAsNMyd
         HAaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Nk/QQxXUc8K+YmPsI1AMtPFl+M2pBWrLtfzJjJB9sMc=;
        b=vg9Y1CrjfCaTpOocL6DxNtl+W6PPimn8YnusFjJNkZ3KHyeE3FrCApcKgyFa9vpYg6
         Ldh69nrmAE5glg5iuvgrwA+zsTW6aPMigcCEmKbfqJhnFOuiETNkr2r5HaBqFBL5ZrMB
         nFynJ6cANV6GLDHmU2Y9LUe+cuxtpPla/UFqlvn1uR5RGo1E0t3y8vJPaoInBqzr6Tzh
         xexhRIhQDQklTHBQOtuo6j5WqcOh8t5fXhXHWwyGq3Rnfz4HcYoIl+Hzr7booukjQX/d
         lHcd2iS1tWkvWZEYRYGIjpOEzL48+gnyUXzm/srpMIr9dG3W+Q1YIG8qqa1um5aocFvK
         EA4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CUphImj0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id p6si628899qti.1.2021.01.21.12.29.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 12:29:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id t29so2201526pfg.11
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 12:29:13 -0800 (PST)
X-Received: by 2002:a63:5701:: with SMTP id l1mr1015562pgb.381.1611260952674;
 Thu, 21 Jan 2021 12:29:12 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Jan 2021 12:29:00 -0800
Message-ID: <CAKwvOdkoBwdR0_8oOEn9oXaK8dhuM8ZUZfKKfhskU_FpmLLPQw@mail.gmail.com>
Subject: Welcoming clang built kernels into CKI family
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000b9e44f05b96eec10"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CUphImj0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d
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

--000000000000b9e44f05b96eec10
Content-Type: text/plain; charset="UTF-8"

https://cki-project.org/news/2021-01-21-clang-pipelines/ via Nathan
Chancellor

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkoBwdR0_8oOEn9oXaK8dhuM8ZUZfKKfhskU_FpmLLPQw%40mail.gmail.com.

--000000000000b9e44f05b96eec10
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><a href=3D"https://cki-project.org/news/2021-01-21-clang-=
pipelines/">https://cki-project.org/news/2021-01-21-clang-pipelines/</a> vi=
a Nathan Chancellor</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdkoBwdR0_8oOEn9oXaK8dhuM8ZUZfKKfhskU_Fpm=
LLPQw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAKwvOdkoBwdR0_8oOEn9oXaK8dhuM8ZUZf=
KKfhskU_FpmLLPQw%40mail.gmail.com</a>.<br />

--000000000000b9e44f05b96eec10--
