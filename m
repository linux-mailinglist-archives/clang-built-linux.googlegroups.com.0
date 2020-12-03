Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBWHRUP7AKGQEP3QLIEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD8A2CD963
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 15:40:25 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id 2sf710498vkj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 06:40:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607006424; cv=pass;
        d=google.com; s=arc-20160816;
        b=PIZy87nSCbxutNctT81kIpLllI94lTb9c+zjGccEXsIAC492KsBt7Z/CxSZ/x0N0mT
         ZP1jkbXdwW4KduusoRyFIys5mtls2MAbSNdjeAao9wxVB5ExBwPPS20Z/wqwlm5xEvaJ
         4kRe8H0LsYpqH4rmS1UDzRwy2zY54T04vnixpsZKjKpoKoCv2kHCAH0QfPafbliXGx74
         gX/g+2KEn+U4dfHSpH0LMRG2ACXSxCfVFZhtI4haehQzIGlnAsLtmTtWul0Xw5+93hJf
         V5VRzG58XuAqZgj2auTavdpd9g2cmS/OE2BhGASLUjOmcWYcJuVVo1c+BYHTz/PsLWxD
         ICuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1c7JW0rn79ROzT+GoGdoMRy9z+40sMSjs8CrG3GpDQw=;
        b=FJfnqxn+4kE+EE5JUyGe7tCxrd2JQIUN72JkwJGNUUYlDxBRMtNaGi81tmpqFNzjiL
         F60vRzpBpQq5c1V4wRwvQLafDRhSMSao+nbSB5QmxMxQoG8ip9e/m3zMMLv7xbe9wsMY
         MGxuFiGO6EHP357C7Aju6qsmYBkoMW0hK06AwZIA1tqWYAkVt8wduC8aN9XqZe4VQj5e
         XT+Kf+py2e8tHMUOMBwsl6EdDNqsY59vpWLtmOa4X77SyfeJxD1iq2GvXA0aNr+d1Imw
         OSBg3pbljaPVyYiNnTciHX1qTt7Gu3dZ/XJbz6uw0HQ+FPZytAXxFttCij4EkaIhsv87
         9OMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CVVHlYKV;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1c7JW0rn79ROzT+GoGdoMRy9z+40sMSjs8CrG3GpDQw=;
        b=i1p6lwac9rtiVMROOTxvvCMtFqDv2sfhJ+SqH/L6usfW1jv1Met3JgMtL8oaRP34Iu
         PyN1kyxwB5R7q1m6PIEyXr/DKfdQQ2OXZINNnhsgoPtJnyDnzvfMAIYCB5+Ju4kn+Lrp
         mmgC51FtdK1N0daAbwu0ymeAKzvRNabJckoZmEHTPPk15opP2YfOA3udUXAkfZGRlTbj
         7tMvT7qPAtjmzy66sQt3J+PZNuuoIwptONfMp3zw8oLkKuhHQ90hekGnPIiyGAWhhKjq
         1IK9HU4W6jFwEmKyBc7P1mMitkxrEWjkn5SvAWIU6qkm3CkFBxK/8bdrtyApAuFRgHQI
         LZhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1c7JW0rn79ROzT+GoGdoMRy9z+40sMSjs8CrG3GpDQw=;
        b=YYdAeVjquD8s/caPcyvBnZFwsEUGzkHdxzpsMJxSZIcbG1D3650toe79YswHG1LLm+
         HT7ODAPfWrpqcdyzNu9JoIu1xYhRgdqS/3BeZXqLmCOX65+LXh5O7CZv2Rr2FvsVjBiu
         2miOfGac55wCgyIQnwZnxzYXbce1R2FtwfYTzxkVlpkKOJxId7JL0pRLh34Fz6Ev3XtO
         Wbv3NC5thfZ0yKYq8x047YSfsmYgS3oBz6ajohEvBpAQRubEZb4i4S6FONYGJ39PG25n
         2vKaLkuZpCq4oDIsG1GYwgH5TXMiK1dcrL5u3jdOYxHsvNIdieAMKC2AxB/DqeV//iV/
         VG9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1c7JW0rn79ROzT+GoGdoMRy9z+40sMSjs8CrG3GpDQw=;
        b=V9xnbxFnkCjuTjt9rIJ6cY4O0OfAw25z7gfq4KgHxNR2bpLUSEZwAjRmXkZFM0+Ksy
         siGcV97ws4my/igbBLcixNepP4nd2+RBmUjVHK7ynyfZ6Ez4+RuVY7tMdArmZiTgmkIf
         JLp0vV0Kw98yoBJMU/F01/8lmMXGBFWBhTpZXW7YYXUWpmVDF1nhDBw1IWgurVa3oiMk
         tXjI2EKa0Y4+WwrYIwwRSqhJvn4z+kL1IYT4iWgzrI8DQW5/aWnQSvOzdEiOgQONjmet
         LW8CgKpNCLl3jSg1uqk6KaPOBOFA6wIsakDQgYF7RLyWhAviErpefUFNQOgcUdY43hCn
         KBug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314R+WxTJgEfzZSX7c1vs0a5JLFwNPQUr4rqS8ephIfTpJ/T1EN
	jXMQPaD7DnVxi3kQzR+B9Ig=
X-Google-Smtp-Source: ABdhPJyO553CGPyLzFVuh2eLXH28wg5ccEIY/JbcKc+wHjcXrLPR+WGGZuTdwmcwILsdUcbVrswy8w==
X-Received: by 2002:a1f:cdc4:: with SMTP id d187mr2143953vkg.4.1607006424298;
        Thu, 03 Dec 2020 06:40:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bb04:: with SMTP id m4ls792572vsn.2.gmail; Thu, 03 Dec
 2020 06:40:23 -0800 (PST)
X-Received: by 2002:a67:e217:: with SMTP id g23mr2073388vsa.15.1607006423863;
        Thu, 03 Dec 2020 06:40:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607006423; cv=none;
        d=google.com; s=arc-20160816;
        b=MY+BEqGU3/12AcTnhvgtsYQaBhPwu40n9sIbIMbvS5VJmv3uHiiiM4TgJnA9s34xSd
         jOyqY/98x03xMxIDUoaBmEFu5eHBW80/iyAlM/qQ4k/HMX/InwdsqqaRT+lMGugsu3vT
         KMknn4YMpLOi2iNRq+zABj03q3JXrWTd9JfU8xsUl2LGJY0M0Elk+DMhT+3I3dU8bVvk
         Q66i5LrbYVTKCNCCLlo4gUCCKC7wJ60kRsaLKqV52qpzy6/P1iUr8w0lmT7qlubxqFil
         QxBM6c8jdJbrLlppqeIpTgKjZgNeuBmB+VosOJyDFyDObF/Zgo8BBfoTZT0xMkFOemvr
         GMbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d9G45ZkjSgba/8DWe2/HGegTTTpqJzhrbsxzg42vBcs=;
        b=V448WlWJvET3C0AGAGJWZ4CiGzamsONlIaxUMzWOIp2uJOMka1fksy2rUG9aKSwqoK
         cDpy55V1REHFnyGbAov2PR0eZqm1bn+ljChCVErHP7mrXs9o730+WMMHfIGQOmM27hZa
         ABeq30WTkdZftmy1qOSSHKKDDPzaZBZHcbWuYsZykRLzOE3QRQ4g+UILK7MzMICPUsWL
         wOTfFUlgpn0q2qfq7KcbIqLVluk0PNevUtRjK3o2q9XL5uHmoE2pxYhvwPt10t9orG9v
         ESzzFebmYKFWTQ30Z4bS7Wdpg3zr1whQKI3cej8qzkNvsM2kPmN/lZajKmS7Zu22VwO2
         Onpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CVVHlYKV;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id y127si123729vsc.0.2020.12.03.06.40.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 06:40:23 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id o8so2301505ioh.0
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 06:40:23 -0800 (PST)
X-Received: by 2002:a5e:9906:: with SMTP id t6mr3355199ioj.183.1607006423313;
 Thu, 03 Dec 2020 06:40:23 -0800 (PST)
MIME-Version: 1.0
References: <20201107075550.2244055-1-ndesaulniers@google.com>
 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
 <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
 <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
 <7ca84085-f8e1-6792-7d1c-455815986572@redhat.com> <CAKXUXMx0nSZqFfOF63J+awCpkPkgr-kuchUxd2-tuMbA2piD5A@mail.gmail.com>
 <CANiq72=WZwcPcrnpwGzS=vAGBL6KuG49btKMbwOKTt=puC7qwA@mail.gmail.com>
In-Reply-To: <CANiq72=WZwcPcrnpwGzS=vAGBL6KuG49btKMbwOKTt=puC7qwA@mail.gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Thu, 3 Dec 2020 15:40:12 +0100
Message-ID: <CAKXUXMz4DffG-CW7RZu1X1irw7vpFyuvKyQA4d0C-v0Mq1r81w@mail.gmail.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Tom Rix <trix@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Joe Perches <joe@perches.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Dwaipayan Ray <dwaipayanray1@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CVVHlYKV;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 3, 2020 at 2:44 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Dec 3, 2020 at 8:26 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> >
> > It is not a competition between checkpatch and clang-format, but if it would be:
>
> Please note that clang-tidy is a different tool, it is designed to
> write lints based on the AST rather than formatting.
>
> > But jokes aside: Dwaipayan Ray, a mentee Joe and I are working with,
> > has already submitted a patch to checkpatch that identifies those
> > patterns and provides a fix:
> >
> > https://lore.kernel.org/lkml/20201128200046.78739-1-dwaipayanray1@gmail.com/
>
> That is very good! However, it does not hurt to have it repeated in
> clang-tidy too: it is a very good thing to have a full C parser behind
> when writing lints!
>

Completely agree. A regular expression is only a limited (but quite
powerful) heuristics to a full C parser :)

... and it did a good job in the case here.

Lukas

> Cheers,
> Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMz4DffG-CW7RZu1X1irw7vpFyuvKyQA4d0C-v0Mq1r81w%40mail.gmail.com.
