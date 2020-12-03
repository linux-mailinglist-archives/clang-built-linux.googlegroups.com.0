Return-Path: <clang-built-linux+bncBCS7XUWOUULBBAPKUD7AKGQEL6I5OLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4112CCB12
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:44:50 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id 2sf141666vkj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:44:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956289; cv=pass;
        d=google.com; s=arc-20160816;
        b=KCG05Cw+zTqNn9mCg/OoEr6tG6hgyiXUs0GAMItMjMU1RqbfUndmdMlbq266OrGb/n
         XMUcxEx8KqKrje8qMGG8ss8h2PPr6mjbXPhN3IHy5ZrVubcpF+6XQxoZ1MMhH4kvLoWG
         yn4rVvZHpwq2DPBP4J/drQJ0QJ6CoKCZLBxaw2ENlfOpnQzKmvi8b+bN631w5MfSz7i8
         K6C6Sfb0btXB8loztxlQsK5kcPOcdbNUYkaoqlmFGrlxeV6nBnOpqYsZNrpy7iIx2BUg
         E7OSJUSsDo4/6BgHxMTuIkQA4fgfWsMW8CzaatHwfgvGyWkG+vElqXtdjYBB3qcFDF1n
         cA6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iQWciJGBXXOAClhejFhHgSF5FEoAIbwPKpIHkwy2zxg=;
        b=cI7KyErrhmhOaYpRy9PMuU0keE7FtoylURb7wHW/4joTjlX8v2Rx40KDpIksXwVK0b
         ul3JY8I3IsfR6+XoyiFeys1vpZzUkz5e4Ay+5U1iqdy6h4LPVNAs1yNQ59ozjQWA5tkX
         2tHuEJGGX2vmVHuCQeK9yiecK3DbjJJBns27MkbCXJ8yVFamyI3tzHUFurVk/LweKeBD
         sfWxh/6+hBjgSYHGWNfECnR74uiEZKOEbggwKkMkFbqHgn32n4HP44SYe/tlG0rdXoRK
         Cj9lWobag+oHosodMXL/+4sHc8n5PWjLWb/tdB+Oe+5c81dVpLmRkduaBhVRVtSySlTl
         DmbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYO9umwz;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iQWciJGBXXOAClhejFhHgSF5FEoAIbwPKpIHkwy2zxg=;
        b=TBaTcDfMArEukflm3eFzo3d4Kb64ui6WxwjHt8mIQJu7cI0gPG26WLAO000mL0LuUz
         p82SNGnlFbBVdgxBmZz1znPhfBCqDywkc5sWB1NI+of4areVCmjCRnn2JqTNQKTb0Oef
         KKHlKrZPYJxO0GOlxE6yvIkjnZpmwBJ28a4xbrDek3/Yb8ingjYoV1HZSY2tAkTfEz+k
         SMoNrXYevmr2ucHYMq6qMmcK5A8EfTssPwMTlhYjmOP7QU24GWg+iMkZT1iftgX5AE2z
         wdi68/X89DIcNkKSyUVULdwhndhVy2CmG8QlUl+KRUod7ULxNilyLixqai+3gNhO641I
         gInA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iQWciJGBXXOAClhejFhHgSF5FEoAIbwPKpIHkwy2zxg=;
        b=D1v62J2AHdfxtpoMD5B4YrJh1OiDNzG8rZVZzUuLhf3Bd1ZLsVpMxiS5M69Sc3YrT/
         O6uQfgKfzFKP3oltEPxdrw9sqxDx0eWwusIxej3kp2SLBoCZQ2YyDrwHtNy2eNUQyyhe
         gy/K3yjcgsggbODTGwECXKdlu0vh3a/xq5FFfuFdxgfPhWvVBAYLc5wAIWQJ4sYHcJo6
         G18NnGRdpGvmmrLKumyY3j81t3INTa3gGURz37tiH6LVNUz24WMS8yQPKMDbo/H2SmG3
         2Sejf0P5Rt5zB7pxS2yl0RhzZ4JuJzbRZPTEN+lHw29dSKedTzufeM8RMcH20THKxTA5
         QTNw==
X-Gm-Message-State: AOAM5331ZoleCLtbFsdb1N/vQhqcXa+HGgzuizNVkGBr2gnRJOshJ+4G
	xdiEKu5NT1Y+Z4LFzVaMx6o=
X-Google-Smtp-Source: ABdhPJwH5Siei3ihqNpnbql08KKR+B4DrDEgr2CvMw4dK6lW3p5sMfVJMyMqlQ/Q3vDh6hTR8JyMGg==
X-Received: by 2002:a9f:2786:: with SMTP id b6mr630427uab.81.1606956289533;
        Wed, 02 Dec 2020 16:44:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:124e:: with SMTP id p14ls542806vsg.1.gmail; Wed, 02
 Dec 2020 16:44:49 -0800 (PST)
X-Received: by 2002:a67:e34e:: with SMTP id s14mr645018vsm.19.1606956289191;
        Wed, 02 Dec 2020 16:44:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956289; cv=none;
        d=google.com; s=arc-20160816;
        b=X/X/0X2WSzFKah+VZonYPU3LBBCzO9LDxIaUHdAD5VByjNekLuOo+es+Fx+ypgBIkq
         k9agMxiRrO9MJqaOSiLOrq74Z70kquy4LiDC0z+oyRpnrtDiPB0KelUwzPUH7gjowLWo
         srlUjADs+EZlppKJ6QmigdyQ4MqYME3pLWQzxIiFdcUhy0iMQ3+nQ1uNf89rgC6c+M4u
         ZrZL9z3b4eNbHGH4PFEqcuq7VLbMD5PKiA2W3EKV+Ub02RE5f5xYusXuQsC2O2NqNMGi
         ofDMOu9hY1chV714Fcf3HE51TlIxUcfwVQgfJEmHJWJSEmGHi/d5qHrhqrX0/KYBW5Tt
         l2Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RNzroirroVwJnAmsnPcb64dBgkTA0n9/bOS0U9+vO4g=;
        b=a9oNtGRLnZo0FdOVDqDvHhNJpxhRb3aB7MXoWIhw/3aOAulGGbnMwXUlB9CWSjh0cD
         fxIZkk7x+uQf3hxGJNfimjZC0HE1WMUkLm91974rbskFtu+Gg3UVIbhf8GELr0OnwfCS
         PcJlh8N4wmoupXP6NcYKpO+icKtZBuYpZ5cZwwX7PkhLprE2LnPJ+VmrGhpJ1VigL7+7
         KgYiOnTEZ6ysjVwErEfZYa9iyXU+JUvBKsoUxN3vGmfTbIsI4RcS8AJgXgVhO3/Bpxnk
         M5bhHkqFuE9oXkQyPGZQhvEUZBLimEh7KEAfTHa1otTLaF/Tat96eNNaExsERJ2IjRe5
         hEzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYO9umwz;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id y129si30269vkf.3.2020.12.02.16.44.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:44:49 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id b26so152535pfi.3
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:44:49 -0800 (PST)
X-Received: by 2002:a63:c945:: with SMTP id y5mr818820pgg.118.1606956288256;
 Wed, 02 Dec 2020 16:44:48 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=xD3DQcrLC_YjRyLjJKPGTZj6mbVNBP788-KPTb-Jd2w@mail.gmail.com>
In-Reply-To: <CAKwvOd=xD3DQcrLC_YjRyLjJKPGTZj6mbVNBP788-KPTb-Jd2w@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Wed, 2 Dec 2020 16:44:36 -0800
Message-ID: <CAFP8O3KVP-=YR9xOiQthVzb1DAL=PFNOAcfsw6kPgiiFrZe1Bw@mail.gmail.com>
Subject: Re: comic on automated style lint
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YYO9umwz;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::432
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

Cute!

Just create a patch and send it for review, no need to verify the syntax!

On Wed, Dec 2, 2020 at 4:24 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Thought you might like this:
> https://mtlynch.io/code-review-love/verify-syntax.jpg
>
> via: https://mtlynch.io/code-review-love/
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/CAKwvOd%3DxD3DQcrLC_YjRyLjJKPGTZj6mbVNBP788-KPTb-Jd2w%4=
0mail.gmail.com.



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3KVP-%3DYR9xOiQthVzb1DAL%3DPFNOAcfsw6kPgiiFrZe1Bw%4=
0mail.gmail.com.
