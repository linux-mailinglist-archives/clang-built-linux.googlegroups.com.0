Return-Path: <clang-built-linux+bncBCGOLR5TWYDBBXEIXSHAMGQESW6OSBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 833C048242B
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Dec 2021 14:23:42 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id t72-20020acaaa4b000000b002c6f0e4294esf15457383oie.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Dec 2021 05:23:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640957021; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9lVQpVX1pCaBB3109vg4ASDd2+ZfEhoHUpQ0AsIYy0hn80QDSaqSeTUh1Fvt8e5Uo
         WNnG213dbrhNsXZZaBAPnqB1j5Enj3qQGwryfOvUITw1ji/lxAH0bcsVf6FBgX6vVr86
         gOd5tjDAlRAa3HFuIFkNAVqssaMv0eW3RSJTCJkaX2mhJvdN/UllaTR6iFDgkW6PhRQz
         88wPSTmlRJqs/Q22VFXC38CE5IW6yutYX3LmADqPeE22VfYiya7ClDtj9aXCZ/P9NIwK
         H5wE8aG2GRkhZ21sABvz8vrrJB9BuA5udTqrQIzqJnWJbILNKPKF6VokKE+BXkkxUo6i
         3ScA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=65kgN5D2Mue1P4g1FKKZlyh4WQoudMCUXydLaEc+QgM=;
        b=OEcoP963dqAMeAcVQyR1Y/eZTKhiv9CAu+KMr6ahxyWzUreie8qM18f1wxmovF2X8I
         qKpZY47pw4LY0I1+QEQT1MYGsDBE0P07F4w3CzpKBARoC58ie+HgztF4rKC7qdlOfqnR
         6cfbbZCaNhBSInE/8vJVOB3jlJjpZNGf+ZqMJESr2paCZEcjN0hVljpAQVBJtAqKAzh0
         up9XupuDVyadJjUrja8LMhnqCsX8iZXJPzP+cnsq84FyVbygF+oafgwoePfUUKZfWlt3
         TW7/GQ1LxkiktzjkRdBSski2CPN62utfNRi/zYyVfqoJeZGuOr9+HAqsKHk6iu2Pjwhp
         Oo2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DE9cblHg;
       spf=pass (google.com: domain of ndeyefatou1957@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=ndeyefatou1957@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=65kgN5D2Mue1P4g1FKKZlyh4WQoudMCUXydLaEc+QgM=;
        b=hbrxHrRUfWrHL2UKQZcnr1fsRR3PPUBrGt/OWc31TAXwDeVDU+Z4kTX2yYV/l2zzoj
         dDGynCMPk5SBvYcl6odmHZ8WExXCEOqD73zwV7uBDd+S5/LNCJkDXAn+YRTwufoHyUvk
         ZIRZe7R21yZGKQQfMnpNnmBlf0U6In3n8QDPUDcGq1Y675EFqoHQ5VQZ8dUZz234Ow3r
         nTyI8JUh6gAhO+qKqEqyleu4MNhznP2kqfOAvOIJXPjq6vzKEs8pMppSnJgWeoqLETu4
         rCpa6aFp7AzsAiio8eON3W+xFD61bhKbwK/54E87CkrrUZBkQcuCO6LkBGe53pjOPUyH
         aGwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=65kgN5D2Mue1P4g1FKKZlyh4WQoudMCUXydLaEc+QgM=;
        b=OEe7CHLLbt53+WG9CvsTt+xjDiHPr5Udg68wM/VnklpNQy0LVtJmXDe5t+LMMJ0UGm
         lXmruwylexpwyDrApDZgaYbyUaeLF5or+AtBD7X5Csgzyh3XC5+7rlpdmwcqZ1FIGCtf
         rhygNTBZfwcEUlCcsLLbuTi9bqyvlOwZZ/Po3hUXehCBWyAs+RxIE3ho4bnHsQ+GYYpt
         m5L+GAjmFCyucv01jN3LbuDi5KKZAQXFv0AO+z6o00NFnicijMNgToHans4s/tbt6g6D
         ogqKGMw8ommdk/LZFgT1nZqNIAQPrWyl9Mxvh2N5Sg7QiT/Ug6U/EBitL8deH5Ma1/pb
         VqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=65kgN5D2Mue1P4g1FKKZlyh4WQoudMCUXydLaEc+QgM=;
        b=FnlZshvCh7fd+6WETy1V5uHcvVt3IWD1JaLlJSI0Tedo1RpeYP6MUx6P/Adkr3mYUp
         Ey+064SOCEF0I4xdFahzAMQ9Wc/9qu7BwfjzPaBY+R7RZsyoqDbpCan/UYxEmj3Y1f/x
         1MqF6gKBHMVummde9w4LaOulXpboCfWw9ms8xxW7BN5d3tmxyoCvfoTML7l2PfxCIU3U
         IVJScm5HCS8frTfyDK0OfayrffZq6fFyTDjfnUq/ABHIZcUNgt5v8Xab4YyGlw+n6Hd6
         7aPMSlVQOY/6UGVIWp39jFDzOwx8UO39U5WuXb57oK2PGNX0Fpdd+MVgkLNx7+qmLxw9
         nzHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331U8MyRzfESWlmGdabGV1J8tvoLb+/JXkAvD5UzSspZFprQK7P
	tylZVXWH1psYHCLVjK/KzP8=
X-Google-Smtp-Source: ABdhPJyB4Mssyipl9aHz34v+512CpeNsTAhtUy1YtR23HPCifrf73/73+Rvq6FUaSv90IayYiJZ5xA==
X-Received: by 2002:aca:3556:: with SMTP id c83mr26768374oia.141.1640957020666;
        Fri, 31 Dec 2021 05:23:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1921:: with SMTP id bf33ls6330661oib.6.gmail; Fri,
 31 Dec 2021 05:23:40 -0800 (PST)
X-Received: by 2002:a05:6808:15a:: with SMTP id h26mr27324542oie.123.1640957020337;
        Fri, 31 Dec 2021 05:23:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640957020; cv=none;
        d=google.com; s=arc-20160816;
        b=Rcr8nyob9aMjD12RkzTMCfs2B6fH9y78I9AndY8OCnrjpX5T4l23EL3e0ixm+tmkra
         fZXnhzfCvjf4bw4b+DLCwxx+2I2OfpGD+V12gG5VLGm0LWGeRgyoPEjivFs13Ea9m1JC
         gQhFuXsTRYobEuVHzu3sLeK7fcE51Fux8R7uttaiAA31KDq97eJ5a0E7N4GgC+4uxCAT
         bwzRbOiVm41t47KtSSy/7CkMo5oO3IHyX+ErHh29/T3zQbRoeuAL7CUcZSYoBYyrNGMb
         QOlfoWxY6ph5hXyEzIwNmmSStKPs++g9qpVd4v9cTPz4RT34PQAYLiflFHTqpsDiR7Ea
         22fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=T1DWiiPjLv++P8zPmHZRdTCYimwIGtn4LQJe+Kub0CE=;
        b=zt2RbRRNNgzkF4g2afk5SSRJU2F1KVMz7DFwy49VyPIY/71ev7qtjbbHsfCcu41qOG
         yiJ3+bD6BerQHossQIiKp1ZUfG0ZW3M219FIr1WjeNFVuISxmrUQOXLTxCw/VrVDp5Xr
         gfAZ4Zb9+P7gD+asus4spKFh7kyMbPzuczEx84yzAPj+cYkwO92uUJ8Tqtcr6mEU77S5
         po0FmKSzv+yF0LDFTiIlgjv78BsLn+PUMpuIcC9iGok8c47ycUW0Q76GKK4dVsJbetj8
         kAYbzjmbexDj0U8Fob/NZMyIa15rwCcnFZcHB5TVlsTnDbMbgVkaWDwGM2rZFEflE80W
         JnBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DE9cblHg;
       spf=pass (google.com: domain of ndeyefatou1957@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=ndeyefatou1957@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id bj28si3968032oib.2.2021.12.31.05.23.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Dec 2021 05:23:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndeyefatou1957@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Received: by mail-qk1-x72f.google.com with SMTP id i187so22965531qkf.5
        for <clang-built-linux@googlegroups.com>; Fri, 31 Dec 2021 05:23:40 -0800 (PST)
X-Received: by 2002:a05:620a:9dc:: with SMTP id y28mr24544028qky.257.1640957019950;
 Fri, 31 Dec 2021 05:23:39 -0800 (PST)
MIME-Version: 1.0
From: Karen Owen <ndeyefatou1957@gmail.com>
Date: Fri, 31 Dec 2021 13:23:29 +0000
Message-ID: <CAGF7DfgbY4xokyiVYkUmvC2H1Nux0iRuZ36v_gVxrr0+P2ddiw@mail.gmail.com>
Subject: hi
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000044149005d47114a1"
X-Original-Sender: ndeyefatou1957@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=DE9cblHg;       spf=pass
 (google.com: domain of ndeyefatou1957@gmail.com designates
 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=ndeyefatou1957@gmail.com;
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

--00000000000044149005d47114a1
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGF7DfgbY4xokyiVYkUmvC2H1Nux0iRuZ36v_gVxrr0%2BP2ddiw%40mail.gmail.com.

--00000000000044149005d47114a1
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
om/d/msgid/clang-built-linux/CAGF7DfgbY4xokyiVYkUmvC2H1Nux0iRuZ36v_gVxrr0%2=
BP2ddiw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAGF7DfgbY4xokyiVYkUmvC2H1Nux0iRu=
Z36v_gVxrr0%2BP2ddiw%40mail.gmail.com</a>.<br />

--00000000000044149005d47114a1--
