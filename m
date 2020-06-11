Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBLOPRH3QKGQETZMU3WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 067371F6CB3
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 19:19:42 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id p10sf2798321wrn.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 10:19:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591895981; cv=pass;
        d=google.com; s=arc-20160816;
        b=FuUv2rIjGhrzDFQC2nayw3c3OxqorxQ/GBVSaO4qkg6bCmiXF+4MhIiEriO+hPmD8K
         IWuwCFMCckQkIVudIRxaY+UbVyop/RIUPXbkkhy6gXr8q/FlsRoD2TjpOH1Iv3EWifVK
         fTX0PueLmlr8xNLrLJBp5m+dqfKP/baJFzyYZ7J5I2bykuGZryV8RDeYHkCpDxPGQjsR
         xklkYZ3t896TgJpVKUhoFyRPR9PxkbdKSeBPqIxIdOqY9kRdSbk6ifqjNxv6fwW8UeSg
         w5gS9fPCg3YswtZJ7K4IM+V1LP6NQbOveBSph+QiLw9SOWrUAHzeKtMDIEdKHwYJc3+m
         4OfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5q5+W7ZH/LJOp4vu56AO17YYyze7nfYq1nXm/bQ3lHU=;
        b=V+/HQZ13Hr30yiI6DI2eE4ShR6q2RXkGpDXkEEY4ngg5ocrm+wXl3nYPtchnayBvt7
         aG90iQvD6OcsUrfxuUDTpartMF5ysCfv4WwWyctyWQ1I99hO6zr7/6Bue311et3sV4yZ
         3twpKQMKnxDLCF2KN6iWfJm/xM3hqQAatOm8itaRV0iwqxg1JNCF2qY1vvr0H/ViEZI1
         t6s9d5CWTE8ZdG7qR87hRN/aFDrFZEcZRt/w5t5Xw1OSbMOwUZ/PuCOFxqwT1BjbvB/+
         54TJIg2LzTwZkgvhni9sSICAmKZl42n3P+7NxTE6KyKXAdRzFFn0SY/ALUKzONL5vfXI
         UYsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N44dVBfE;
       spf=pass (google.com: domain of jiancai@google.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5q5+W7ZH/LJOp4vu56AO17YYyze7nfYq1nXm/bQ3lHU=;
        b=jgGaJMKBSuaDx3Imbl/ASNx+uB3gcKsojdKvpxEmN9iX4gtuoT1hdKWJuDoM9QVZtj
         9G+ntexWwuwaUcnCBzvLf3AIEYacpI9UjpeYVG74KiesrdxrLtKUh9z9J4ppC5zKOQoq
         X8kasitcjNdk7W+GFBhBpwx56rv2Uw6xqf17pfMU8fPbwFDNjvrLcuTKPE2EzRDrxroL
         dZk8Gp5Lit8j0grLrp/ibDSOLjysJoVdJ/W3DiHFEvIXsE3urIJD3C8EuePoowKxs7gv
         J6AFj3DotMBe3gdXeUIwmskSN0dRtKu8pfW0EVd9KMCCLRSNcQKKe9Gz3D8mvpOesLpl
         tLUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5q5+W7ZH/LJOp4vu56AO17YYyze7nfYq1nXm/bQ3lHU=;
        b=E2KRqaxJDOqvu8PH+1Qd1iWkablgScbMFyNnjmOxXdPBrkbW2bZUDQB3UBwBXBw1yO
         8HByNZn6fpO8bu5N+UULJmFwfw/j7ZH1CF9mbSqOpkxXE0LdAqsntxwWXQqISbQCBsz0
         E7r5Ohfnz0jV7ofmb7IWigJaCa8eaZu8LztBkMoyITp2wi4cpXIXiTIduXGPZQZjlAbu
         LFqy+i70UupMc4EB22ygoeET+2fQeCPHRobRswO9DSkyi52VmmljXzqY17PaCTesVLM6
         vjijFu9DJWsWiBVZWlhyrDrKX8/1k97+sMeAjGr+0ZNLz+KgJzGy2Cr6HdVv+ZLC+smA
         xlPw==
X-Gm-Message-State: AOAM530e0K1ggxlvf52OUVOuJEbjIGtxx1lUTuAKubkqwqI6yIwxSxjd
	YzKCi0f7zfAHYh40lQC2VAk=
X-Google-Smtp-Source: ABdhPJyW2isc075gBHfDjcffu4+VsVMvDxnZGJL7UqVCCpWidYTbpRpcNgimwdZBfEiUu8f3QNRlzA==
X-Received: by 2002:a5d:558a:: with SMTP id i10mr11197649wrv.207.1591895981743;
        Thu, 11 Jun 2020 10:19:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aace:: with SMTP id i14ls1203499wrc.3.gmail; Thu, 11 Jun
 2020 10:19:41 -0700 (PDT)
X-Received: by 2002:a05:6000:12c4:: with SMTP id l4mr11113508wrx.128.1591895981288;
        Thu, 11 Jun 2020 10:19:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591895981; cv=none;
        d=google.com; s=arc-20160816;
        b=HofS+i/MDYP5ykkOs5E+/T2HUKP96NJtzwJXcnefTJlVDTx3o9gOxGNsvnrXylKQuK
         ALi9QH/3hhtG/fsKA/6DqMBmEBilz9QT5ipSbuWwy6Vw1ZSU3eCNM0zYSf1XDrXccTV7
         PQCJ50XACW87Rw0Mejng5AICFqziYfiz494kbRCdN5UAMLWrmmOXlJF7OVgxu6cUzH/4
         oeMceqId2jqS4/JBJYpirW70yYuPq/9ruaE/QPtv0F0NEy31RFvsOZPGfSo53BTYMGHj
         oR6iM8bhoOYYfQZZEzaiR2Yt6TdRQOEUh5MIrqElxQciu4gNtms7DHKxrVgBAgE8Z+ab
         LTnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fPNJvaCx5Xn8XlijRm9tK1ulJchQITM7YYoJAsSERWU=;
        b=LKRwYnP/nGdhvksWUgRYJ4tF/i7Xi+TVr1BK2gqACuBm2In7hgNLHUPzRQ/AKbI16+
         /plb8ivDdlKppr5b7mIlnRaLNqKdl+/XDsViF1I6KszMXn5AkiBHBhc8V8DuamUyvegY
         Yg/Z9G3s4wfN2LFs2VDF4pZHmTEmeliEx7J7Cw9j36AOVdGhrzcCMYgBWDeZYTK5FmBi
         EzngI8nvQVCbDMapYRFe9zUkk4S/NELeZcQRqmX8f1HXT1YlZa4iLN9l2dv7EpyP07KJ
         cyr+KOI/KPLxSalCUIxNh3YwHyWfqsP9+WLIvmC9CByruH3GPZdIJi/GbJpJTAAlATTY
         RuSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N44dVBfE;
       spf=pass (google.com: domain of jiancai@google.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m16si641500wmg.2.2020.06.11.10.19.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 10:19:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id z9so7832150ljh.13
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 10:19:41 -0700 (PDT)
X-Received: by 2002:a2e:8593:: with SMTP id b19mr4675467lji.6.1591895980537;
 Thu, 11 Jun 2020 10:19:40 -0700 (PDT)
MIME-Version: 1.0
References: <CA+SOCL+ntBRGoA2qttMo=bt_VVKJMm8GEq+bfEoVvgq-j-Y1KA@mail.gmail.com>
 <20200611111542.GF3802953@kroah.com>
In-Reply-To: <20200611111542.GF3802953@kroah.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 11 Jun 2020 10:19:29 -0700
Message-ID: <CA+SOCL+tj0xb2ZcffMCaXRUy7mkdPFa6Bz1WxkB=M4UOb_EURw@mail.gmail.com>
Subject: Re: Cherry pick 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sashal@kernel.org, stable@vger.kernel.org, 
	clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Luis Lozano <llozano@google.com>, 
	Manoj Gupta <manojgupta@google.com>
Content-Type: multipart/alternative; boundary="00000000000070d10405a7d22a57"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N44dVBfE;       spf=pass
 (google.com: domain of jiancai@google.com designates 2a00:1450:4864:20::242
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--00000000000070d10405a7d22a57
Content-Type: text/plain; charset="UTF-8"

Great, thank you!

Jian

On Thu, Jun 11, 2020 at 4:15 AM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Jun 10, 2020 at 01:41:59PM -0700, Jian Cai wrote:
> > Hello,
> >
> > @Nick Desaulniers <ndesaulniers@google.com>  made a patch
> > (51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b) and it was accepted to
> mainline
> > as part of ClangBuiltLinux project to make the kernel compatible with
> > Clang's integrated assembler. Please consider cherry picking it back to
> 5.4
> > so that we can use Clang's integrated assembler to assemble ChromeOS'
> Linux
> > kernels.
> >
> >
> > commit 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b
> > Author: Nick Desaulniers <ndesaulniers@google.com>
> > Date:   Thu Jun 4 16:50:49 2020 -0700
> >
> >     elfnote: mark all .note sections SHF_ALLOC
> >
>
> Now queued up,t hanks.
>
> greg k-h
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCL%2Btj0xb2ZcffMCaXRUy7mkdPFa6Bz1WxkB%3DM4UOb_EURw%40mail.gmail.com.

--00000000000070d10405a7d22a57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Great, thank you!<br><div><br></div><div>Jian</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Jun 11, 2020 at 4:15 AM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundati=
on.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Wed, Jun 10, 2020 at 01:41:59PM -0700,=
 Jian Cai wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; @Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com" targe=
t=3D"_blank">ndesaulniers@google.com</a>&gt;=C2=A0 made a patch<br>
&gt; (51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b) and it was accepted to main=
line<br>
&gt; as part of ClangBuiltLinux project to make the kernel compatible with<=
br>
&gt; Clang&#39;s integrated assembler. Please consider cherry picking it ba=
ck to 5.4<br>
&gt; so that we can use Clang&#39;s integrated assembler to assemble Chrome=
OS&#39; Linux<br>
&gt; kernels.<br>
&gt; <br>
&gt; <br>
&gt; commit 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b<br>
&gt; Author: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com=
" target=3D"_blank">ndesaulniers@google.com</a>&gt;<br>
&gt; Date:=C2=A0 =C2=A0Thu Jun 4 16:50:49 2020 -0700<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0elfnote: mark all .note sections SHF_ALLOC<br>
&gt; <br>
<br>
Now queued up,t hanks.<br>
<br>
greg k-h<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCL%2Btj0xb2ZcffMCaXRUy7mkdPFa6Bz1WxkB%3=
DM4UOb_EURw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CA%2BSOCL%2Btj0xb2ZcffMCaXRUy=
7mkdPFa6Bz1WxkB%3DM4UOb_EURw%40mail.gmail.com</a>.<br />

--00000000000070d10405a7d22a57--
