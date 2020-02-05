Return-Path: <clang-built-linux+bncBDZ3F5UE24FRBNEU5DYQKGQEZT5UDIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id E75E0152408
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 01:20:04 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id dd24sf327111edb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Feb 2020 16:20:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580862004; cv=pass;
        d=google.com; s=arc-20160816;
        b=p4gIU4S1+54IGTmWpHK4+6fZGC23egoGs9uv7eTTLEwSKiyskoyPH290rdD13TeUwx
         iz4NKPZR3fpRNe7bQT8neY3hlzc9RCp1hFAXcfbkVY8TjqQXrkCo/xTcHWpxCo3OY60d
         wwtBJtZD/Q320MA62toOD7yasIJZYjuY/eUn2CCv0tw/PtYeR72v9wHwkfjc0SJBVqn6
         VwDDL1FEQXjst3r/PfkeJlmqwOdKpQd3pHapRulipmM0WERZJ3qHgSDRC52ccLDcm/Bv
         o229b2Yx3EoA0CHkc2ocsACwhzuUzP4yr2lLp67kGRd30VIN6diqm3M2R9eQ+KGcS9gT
         2hKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=quC/ElwhEfdHvgMcyel+eNCz+A9+4XrKxoKsOfJhH2Y=;
        b=h8UShyuVDq82z6FoknIsXwHPRys3CDxjt90GiVJxJbiJnmwbwXYP6ziDtVxfXGRp+v
         RCMlhY5PzOSvVzmkh/dGaDRddDV412BhowbvTnOGS0pbEgcBY11FFXTOGU3yWebKhlta
         aARd5IacAi3DYog6IwFvy7NEhjbc6f2Z9hL7dJqNEBPAnltdvTUjjr+CfQdNxYblPjql
         wPaqoT1m1vaiFlhyHtsnIalmfUNoxFeBUoFgtnCMvfQ3WqyYlseRgbwQkSM5AwH+WI7+
         Ilf7rQcCbOHBFJQhN1xWrXmO6+bQhYMe/9/Ae9DSQO7hwTLyZJO2/KAEd0XrPStD2KJA
         FmnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h24QTWyy;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=quC/ElwhEfdHvgMcyel+eNCz+A9+4XrKxoKsOfJhH2Y=;
        b=pif17FlUsBi6uktt3SbGYdti9KXZ64+GEIwt+RZ/qHuekS5jph3C0l595xldnvdHvB
         l8cC+6C+NLpN4hNu9Pm1zpmfqKe6OKzOtQ6kcK62WG0xdH9PeENKqLgBShpzmtBiVlUH
         7Q7w/CcVU3c10xmu8rYgmM/IcA11Tpi1mSrymV62FczZ/yzq4twUoMgJfm9bSf3U+6td
         AiwOvLmapjIy2WXU8P+Se0d0BqwA8eQLCZzVrPUBissO+jhIC43FEys4nmAYCI6D4QTJ
         XZh1PSWLB4uABBFQqSF+/EEYro6Iy7emcc9B0/I+lJrjlt54E4pVR73RC99+lAlYRFQl
         nE9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=quC/ElwhEfdHvgMcyel+eNCz+A9+4XrKxoKsOfJhH2Y=;
        b=RZBBqVaRDQcivEhLQ0GfNLTrAzJ/RjloDOFBJ8vRkOfxShS9q7qKNTcw/km53wI69y
         hP2N0x29ckMdPRWmZcePBX3C/3hO2k9eefxh8rzLb9JBwydIEnvIWpkYKjZM7lL8GDap
         2oErgYr/KETm+GE6vk1EJDjq4EcRfo8LCpL4+qqVH+FicWuRjxLXRLqdnGJC9WW9+tOn
         0cOLnM4Bb/Nkr13itiqZ9hf/6X0yJ31vPTjZetgpn1wsw0uoKQTydBQKjYnmzS1/Z1Qb
         aNqpq/gzWywNsbln1XQPAC/a/QolMVf4P5NV2gGn5mj4KbO/T6HOrei98o/u2FGGWZLH
         dX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=quC/ElwhEfdHvgMcyel+eNCz+A9+4XrKxoKsOfJhH2Y=;
        b=ItEmpCZMIx4Avtz6sSwP0tTuSoH5zIW6O8XjPDenGNb9XEeDajBTShOgb98r0aMQDe
         Hf7N1K6NVJr1kzOdsVglumjcQEQyi2NBG1/sV5V21sEnV2dH8/tiwLRy0mckpAQpawjV
         9GiOEWlj8QQpihetzL5aeguHh804ZfCCqj9FYsLHYd/FCo+3Kf/uYGolWZTTXdepp7Rq
         gI7KLTCC3m65SFws4mDkW2RHHu7sOQ+TieMpl6YajQsE9I23sCYABJVxaFytdJjHxg2L
         +CUbwsJh8yjkBmfMQhDlCIh192EeLwJ2oQj7uKIHEYugl8SDojmW6XbLprTstvnRMvc4
         HAXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUeSsk1wdWlQeA7hIJawcwURS27TnowW9i6YuhHRNOwJK/rJDsz
	OSsvGjdezj5j9OIPNAGAA5E=
X-Google-Smtp-Source: APXvYqzvyUqkr4nxmJHaviq0KCVQlN8u8hSZb2nI4ekV0ctC9CNCidB20fKbCB4Qe3aot+v/2NgoIg==
X-Received: by 2002:a05:6402:1595:: with SMTP id c21mr2807518edv.32.1580862004676;
        Tue, 04 Feb 2020 16:20:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bfe7:: with SMTP id vr7ls56755ejb.1.gmail; Tue, 04
 Feb 2020 16:20:04 -0800 (PST)
X-Received: by 2002:a05:600c:294:: with SMTP id 20mr1694757wmk.135.1580862004076;
        Tue, 04 Feb 2020 16:20:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580862004; cv=none;
        d=google.com; s=arc-20160816;
        b=TclKl5UTY8hj1YqEtYUYIcRgx6v80GJV6FqWxluBo+lYCpCJNH23yIiHVpwsEa28vw
         zxSEQ0IGeyRjxMfcMavsED0oGAxptOwWrj+1e3Jiij9GTWFQ2QU2KPmMq3pGo4GBxeZz
         MzwP5hvUXUffRvm06UsBTbeYmz1uDyHOi330EZp7xukKevIjphFLoqmixq3q6f4xw9uf
         V1HLQkgmQJ6rX0CCwgLdnSy3OwY0sMx6/z4ZpUxz5JK6DYgrs2OaPibA8R+4f3tbrFqk
         dAKhaj4s2/krrv3iFFduo3KKCYNiKwbAxVacczE0txS3ruEcei5G45H9autZcX5kcZaz
         6hfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=KaQ2mt39dCAFSJwxpFsF4rT6NGjGOTtv0fdRSVTEOIc=;
        b=ZlmV1s8jbMFgSWVDpggFMMzGmPZTNhQKNM/FVj1L35hqWpigG4JBBKmBUsKnDtfUFl
         cUdstLK3pzVI6WW7D34QMnkhZcpi5iYFH6XS2gxdywqwAEKuvCsTU2g4Ra2eQVmj0bhP
         U5UDHgJDWQBjn4khkNwfd7nCnbljHoa9/+YRxNKYy2NAqSjY0CbkWMadSV2IakxTbFMR
         47AV/pu3dsQklJwLsHC3pVe7WHfPr7AYw1HYhsUpy7B58Usy4K8k0ntioNl83Ng0JzCO
         TCq7Edf6jElIjfSeazMa+6jmykFuz3uyVdPJFPa7ofabof2zDtMjXTiyU1M5q8w+cvO+
         hx1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h24QTWyy;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id y185si184999wmd.2.2020.02.04.16.20.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2020 16:20:04 -0800 (PST)
Received-SPF: pass (google.com: domain of nick.desaulniers@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Received: by mail-ed1-x52e.google.com with SMTP id m8so419776edi.13
        for <clang-built-linux@googlegroups.com>; Tue, 04 Feb 2020 16:20:04 -0800 (PST)
X-Received: by 2002:a50:fd04:: with SMTP id i4mr2618244eds.311.1580862003618;
 Tue, 04 Feb 2020 16:20:03 -0800 (PST)
MIME-Version: 1.0
From: Nick Desaulniers <nick.desaulniers@gmail.com>
Date: Wed, 5 Feb 2020 01:19:51 +0100
Message-ID: <CAH7mPvjxDPo8gDV=MsUKfQA_ZSyf_sjS5KthAEsfB6PwhbuNrw@mail.gmail.com>
Subject: Control-flow integrity for the kernel [LWN.net]
To: kees@google.com, Sami Tolvanen <samitolvanen@google.com>
Cc: clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000002a29c7059dc91e04"
X-Original-Sender: Nick.Desaulniers@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=h24QTWyy;       spf=pass
 (google.com: domain of nick.desaulniers@gmail.com designates
 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
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

--0000000000002a29c7059dc91e04
Content-Type: text/plain; charset="UTF-8"

https://lwn.net/Articles/810077/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAH7mPvjxDPo8gDV%3DMsUKfQA_ZSyf_sjS5KthAEsfB6PwhbuNrw%40mail.gmail.com.

--0000000000002a29c7059dc91e04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><a href=3D"https://lwn.net/Articles/810077/">https://lwn.=
net/Articles/810077/</a>=C2=A0</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAH7mPvjxDPo8gDV%3DMsUKfQA_ZSyf_sjS5KthAEsfB6P=
whbuNrw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAH7mPvjxDPo8gDV%3DMsUKfQA_ZSyf_s=
jS5KthAEsfB6PwhbuNrw%40mail.gmail.com</a>.<br />

--0000000000002a29c7059dc91e04--
