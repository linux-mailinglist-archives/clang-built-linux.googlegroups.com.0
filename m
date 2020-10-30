Return-Path: <clang-built-linux+bncBDQ2R56ST4HRB3OQ6H6AKGQESWXIAWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1E12A0E8F
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 20:24:30 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id f10sf904293uao.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 12:24:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604085870; cv=pass;
        d=google.com; s=arc-20160816;
        b=jGlgc65ZaorE6QW+RrtL+zre1oQROX/7ER5EU0wLGuBZlz5wYm3HsPLZHB3jANVLv7
         CmyQRo4rJBTIu/beHzKqiNlWM4F5WGTb+aZEiUj0xeMrkY2WR51yrfjZTLQ+ApmT+EJq
         nagyoQGIDzZb6qrDh3KUoYQuD4h2t1JaCSv3Fwwn/QjcZz7JuIPmAsUg1IDMTS6Ih4Df
         Az2IAlYvGKRH5DOKGS3QFSQUTX/50wJXitgKoyp9Yo+30AFc2vWCFpQli69nWlk0crj+
         fRK8yh3fq6ieOzu/+2LpVy7YXe8vW1giJMfcEIuxpz0B3ERrbIRyM+x+2/F8sULvuS6n
         WFmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=36nwFW4+DDnYrW7MEj5+DRpZ+Hvg9vFQbrimGM5nYDU=;
        b=H84RbBEYcoFv5yAMD8vCzyOeq0vEXzBoAV1KQ0z5mgzBWfEemhuV/4oaOCubzvYMaD
         PKPWG3VhtXucryseg07pGt8VVjGZs3KxebDh79KYwCBFzt8w/atCafaJtuCwhG/thxN+
         whtIc6IAoNZVr2iqNIGjAnq6nmsaUK31JQxdsZX6TGvdV85kLC1CDPBnYjybmQAkj/qW
         qT5VqMcjoFaGYrS2hNv4Bc6aZQ/H+samtad0+qQsgqla5t70EuMZ63+fgV//qnXaJvQu
         LwrIgxts++KBDZSFX44DPJsqZhVMVMKbFapyfhQ2CYTqp8lkQ2WZUN/w84LieVHE4cM+
         XsaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bA4ESIl3;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=36nwFW4+DDnYrW7MEj5+DRpZ+Hvg9vFQbrimGM5nYDU=;
        b=DwuNQ7zXqgVpupCyA6SDNXwqWwWkN9M73tKyfFcpGj4cL9xniNvpfK4WZEnVMRGaid
         auKbR/e/e6uS0+uQoWOTDCDRmSUEYIcksOLQdiAGTkO/r36IOUixZslWdzbt216GL8L6
         Cz7cAV0i3S+OrMNjItZNy2E3zvQp5nt+So9xYjXht8jL3k9wBXuExclGLWd2BUUnFn+G
         6My/oesui7agOhEUjBn1O54RQax37UjtNhdRE0VzffFgMnvgdz1098hxGk7Bb5I7zmvT
         BeTqJ+RL6uPRlUA5uv0/0mW3b35acn7jNPdU+qCqVGPd02ZqF6T4mG6HOtDEGpGYHZHp
         eUFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=36nwFW4+DDnYrW7MEj5+DRpZ+Hvg9vFQbrimGM5nYDU=;
        b=tgp84Xe+KDzYph15ryYFjYwFdxb4cDVRQX3lHLvQ2WDZCRgHyIy/ry6+9+zvkVFldR
         +E2oW2C+N4yiS4x17Nx0LOyFXUQxz0VIoV6M+N8NlZhCuJ6+ovkUnwRcPm/gGECzH4HS
         4uekio3SYoub8EOEnitqyFcZEzFR9xzp/tWoxhwQeTY3s16u0otb20aaWinzrQ2SErKT
         KuRmq0coMUYUQvP1rpk77BP4R6zLpSBxn6UfIWp0NIB0fmio+PJLGWS3o4LPOJmug/g0
         nE42w7QTSL9kan5uB2kG/7y1oTIg2utsbAq8Nh3x7TztZTCSuzcS3ntgFJWB9f6blTt1
         4CFg==
X-Gm-Message-State: AOAM530VOaYVXtI1ssd8gJG6y/boOl/GsgGCPkjyafx/sJQtmUNdYg99
	Y+0rxxRXwOtvjHIVk75gny8=
X-Google-Smtp-Source: ABdhPJwjz5G+z936KgtytPt7CJrd7NpjALgPlgoxMClK2gSBBOvlZCpezDX5BOTRD6nWTVPlt53OXw==
X-Received: by 2002:ab0:6942:: with SMTP id c2mr2732268uas.11.1604085869873;
        Fri, 30 Oct 2020 12:24:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:d9c6:: with SMTP id q189ls461663vkg.10.gmail; Fri, 30
 Oct 2020 12:24:29 -0700 (PDT)
X-Received: by 2002:a1f:a344:: with SMTP id m65mr8207933vke.23.1604085869380;
        Fri, 30 Oct 2020 12:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604085869; cv=none;
        d=google.com; s=arc-20160816;
        b=MtwNSpVlS7Hwr7LubqPEUxxUU46JsvRJeaa8xa5hGTTU7VxijXm2kRe84jMe0Jdg64
         lHMvZx9rMqTWiyTZ9W5ahMoHJMUeeAhINvKaD70iLTyl1dj+lh/M2cZfLdSgBwfwDG7u
         a4HufPSguo+3CIj+XmxN+RY307Ir0PqzgjKm2Y3CckbNzB260F7769S8aQvL0b/Nh29S
         CWY4/0RgPOtJ4JgiTcEqpKjy/vmiiHX3QWQ4btUKRroUVCsvc6/M5sqkb12wjOyDDoGs
         9ysJ6SQOkoD1LdVww0XYCNSMdSRvCV68uMMMF+yDlouNQiSC+VbXaEwnKHP7sA8HkZiW
         6OIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yA5HEsL76oCJnCiKAWocFDqR0M2jpkZLRZmk4E3FMls=;
        b=bVJ6+x0URefa5gIB2ykwBDVKAmVm9yerXi7INryrVysbaUaEbvYBAKa5/oDAqxBhcr
         hHffyzXPUoGNCJSebf3al+fYTxxNLro7GaRp7mltzTsAEHc7ciM0tbJPZiI7sqEPE1NL
         3t2IC+CEqne8WRtwQR+V9SsP/JRjHPH4x4z5Ky9dBDXO869N0DB32gzjYDEo67xSq2Q8
         kYgaVLail6jLFwTeTtBimLaezkum+hS70YZXc+ERlwLRpsh7xx3KhztoxU5Slj3FodCF
         tAWATzrkMWSCHjOQgb9TKiJGyCrSsp7so/YUs3mYzowNVizHQuJ6nc6SSSTVyPvMGynq
         qKJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bA4ESIl3;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id b16si441734vkn.5.2020.10.30.12.24.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 12:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id a200so6136127pfa.10
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 12:24:29 -0700 (PDT)
X-Received: by 2002:a05:6a00:1:b029:164:1cb9:8afd with SMTP id
 h1-20020a056a000001b02901641cb98afdmr10377207pfk.13.1604085868691; Fri, 30
 Oct 2020 12:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201029110153.GA3840801@kroah.com> <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
 <20201029233635.GF87646@sasha-vm> <CAKwvOd=MLOKH-JoaiQcahz3bxXiCoH_hkfw2Q_Wu7514vP3zkg@mail.gmail.com>
 <20201030004124.GG87646@sasha-vm> <CA+SOCLJqVjy9QRssE9AZ1nQBwZB5mAcanpVTVOd4kO3=r5jrfA@mail.gmail.com>
 <20201030014930.GB2519055@ubuntu-m3-large-x86>
In-Reply-To: <20201030014930.GB2519055@ubuntu-m3-large-x86>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Oct 2020 12:24:17 -0700
Message-ID: <CA+SOCL+b_qvvEHFz5g416Kdfzy3nZQnizow9-C9k1pw=ZeoKJA@mail.gmail.com>
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sasha Levin <sashal@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="00000000000064f8a805b2e858be"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bA4ESIl3;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::42a
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

--00000000000064f8a805b2e858be
Content-Type: text/plain; charset="UTF-8"

Hi Nathan,

Thanks for all the tips! I have fixed the issues mentioned in your comments
and used git send-email to resend the patch as recommended. FYI I used
the Message ID of this thread but it created a new thread anyway.

Thanks,
Jian

On Thu, Oct 29, 2020 at 6:49 PM Nathan Chancellor <natechancellor@gmail.com>
wrote:

> Hi Jian,
>
> On Thu, Oct 29, 2020 at 06:13:07PM -0700, 'Jian Cai' via Clang Built Linux
> wrote:
> > Thanks @Nick Desaulniers <ndesaulniers@google.com>  and @Sasha Levin
> > <sashal@kernel.org> for the tips. For this particular change, it seems
> we
> > do not need to backport all the dependencies (if they have not been
> merged
> > into 5.4 stable). @Greg KH <gregkh@linuxfoundation.org>, please find the
> > custom backport as below. It has passed all the tests on ChromeOS (
> > http://crrev.com/c/2504570).
> >
> > Thanks,
> > Jian
>
> The below patch won't apply because it appears to be copy pasted into
> this message:
>
> Applying: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
> error: git diff header lacks filename information when removing 1 leading
> pathname component (line 6)
> Patch failed at 0001 Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to
> kernel 5.4
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
>
> I would recommend resending the patch with git send-email or attaching
> the patch file created by 'git format-patch -1' to a future email for
> proper application.
>
> > From 60891062750a39d8bba9710d500e381a26c11f75 Mon Sep 17 00:00:00 2001
> > From: Jian Cai <jiancai@google.com>
> > Date: Thu, 29 Oct 2020 17:49:39 -0700
>
> Authorship and date should be fixed to retain the information of the
> original commit.
>
> It is trivial to just redo the cherry-pick to fix that information in
> this instance but this is the command I usually run for more non-trivial
> backports that I have already done:
>
> $ git commit -s --amend -C <sha> --date "$(git show -s --format=%ai <sha>)"
>
> This should allow you to retain the commit message of the original
> message along with the author's date.
>
> > Subject: [PATCH] crypto: x86/crc32c - fix building with clang ias
> >
> > commit 44623b2818f4a442726639572f44fd9b6d0ef68c upstream
> >
> > The clang integrated assembler complains about movzxw:
> >
> > arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid
> instruction
> > mnemonic 'movzxw'
> >
> > It seems that movzwq is the mnemonic that it expects instead,
> > and this is what objdump prints when disassembling the file.
> >
> > NOTE: this is a custom backport as the surrounding code has been
> > changed upstream.
>
> A note of this nature is traditionally placed after the signoffs of the
> original patch like my example below:
>
> > Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with
> > PCLMULQDQ instruction")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
> [jc: Backport to 5.4]
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
>
> I usually like to notate why the patch did not apply cleanly so that it
> is easier for others to audit, such as:
>
> [jc: Fixed conflicts due to lack of 34fdce6981b969]
>
> That is merely a suggestion, not required by any means.
>
> Otherwise, the backport seems obvious fine to me.
>
> Cheers,
> Nathan
>
> > ---
> >  arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> > b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> > index d9b734d0c8cc..3c6e01520a97 100644
> > --- a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> > +++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> > @@ -170,7 +170,7 @@ continue_block:
> >
> >   ## branch into array
> >   lea jump_table(%rip), bufp
> > - movzxw  (bufp, %rax, 2), len
> > + movzwq  (bufp, %rax, 2), len
> >   lea crc_array(%rip), bufp
> >   lea     (bufp, len, 1), bufp
> >   JMP_NOSPEC bufp
> > --
> > 2.29.1.341.ge80a0c044ae-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCL%2Bb_qvvEHFz5g416Kdfzy3nZQnizow9-C9k1pw%3DZeoKJA%40mail.gmail.com.

--00000000000064f8a805b2e858be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nathan,</div><div><br></div>Thanks for all the tip=
s! I have fixed the issues mentioned in your comments and used git send-ema=
il=C2=A0to resend the patch as recommended. FYI I used the=C2=A0Message ID =
of this thread but it created a new thread anyway.<div><br></div><div>Thank=
s,</div><div>Jian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Oct 29, 2020 at 6:49 PM Nathan Chancellor &l=
t;<a href=3D"mailto:natechancellor@gmail.com">natechancellor@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Ji=
an,<br>
<br>
On Thu, Oct 29, 2020 at 06:13:07PM -0700, &#39;Jian Cai&#39; via Clang Buil=
t Linux wrote:<br>
&gt; Thanks @Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com=
" target=3D"_blank">ndesaulniers@google.com</a>&gt;=C2=A0 and @Sasha Levin<=
br>
&gt; &lt;<a href=3D"mailto:sashal@kernel.org" target=3D"_blank">sashal@kern=
el.org</a>&gt; for the tips. For this particular change, it seems we<br>
&gt; do not need to backport all the dependencies (if they have not been me=
rged<br>
&gt; into 5.4 stable). @Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundatio=
n.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt;, please find th=
e<br>
&gt; custom backport as below. It has passed all the tests on ChromeOS (<br=
>
&gt; <a href=3D"http://crrev.com/c/2504570" rel=3D"noreferrer" target=3D"_b=
lank">http://crrev.com/c/2504570</a>).<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Jian<br>
<br>
The below patch won&#39;t apply because it appears to be copy pasted into<b=
r>
this message:<br>
<br>
Applying: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4<b=
r>
error: git diff header lacks filename information when removing 1 leading p=
athname component (line 6)<br>
Patch failed at 0001 Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to k=
ernel 5.4<br>
hint: Use &#39;git am --show-current-patch=3Ddiff&#39; to see the failed pa=
tch<br>
When you have resolved this problem, run &quot;git am --continue&quot;.<br>
If you prefer to skip this patch, run &quot;git am --skip&quot; instead.<br=
>
To restore the original branch and stop patching, run &quot;git am --abort&=
quot;.<br>
<br>
I would recommend resending the patch with git send-email or attaching<br>
the patch file created by &#39;git format-patch -1&#39; to a future email f=
or<br>
proper application.<br>
<br>
&gt; From 60891062750a39d8bba9710d500e381a26c11f75 Mon Sep 17 00:00:00 2001=
<br>
&gt; From: Jian Cai &lt;<a href=3D"mailto:jiancai@google.com" target=3D"_bl=
ank">jiancai@google.com</a>&gt;<br>
&gt; Date: Thu, 29 Oct 2020 17:49:39 -0700<br>
<br>
Authorship and date should be fixed to retain the information of the<br>
original commit.<br>
<br>
It is trivial to just redo the cherry-pick to fix that information in<br>
this instance but this is the command I usually run for more non-trivial<br=
>
backports that I have already done:<br>
<br>
$ git commit -s --amend -C &lt;sha&gt; --date &quot;$(git show -s --format=
=3D%ai &lt;sha&gt;)&quot;<br>
<br>
This should allow you to retain the commit message of the original<br>
message along with the author&#39;s date.<br>
<br>
&gt; Subject: [PATCH] crypto: x86/crc32c - fix building with clang ias<br>
&gt; <br>
&gt; commit 44623b2818f4a442726639572f44fd9b6d0ef68c upstream<br>
&gt; <br>
&gt; The clang integrated assembler complains about movzxw:<br>
&gt; <br>
&gt; arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instru=
ction<br>
&gt; mnemonic &#39;movzxw&#39;<br>
&gt; <br>
&gt; It seems that movzwq is the mnemonic that it expects instead,<br>
&gt; and this is what objdump prints when disassembling the file.<br>
&gt; <br>
&gt; NOTE: this is a custom backport as the surrounding code has been<br>
&gt; changed upstream.<br>
<br>
A note of this nature is traditionally placed after the signoffs of the<br>
original patch like my example below:<br>
<br>
&gt; Fixes: 6a8ce1ef3940 (&quot;crypto: crc32c - Optimize CRC32C calculatio=
n with<br>
&gt; PCLMULQDQ instruction&quot;)<br>
&gt; Signed-off-by: Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" targ=
et=3D"_blank">arnd@arndb.de</a>&gt;<br>
&gt; Reviewed-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gm=
ail.com" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
&gt; Signed-off-by: Herbert Xu &lt;<a href=3D"mailto:herbert@gondor.apana.o=
rg.au" target=3D"_blank">herbert@gondor.apana.org.au</a>&gt;<br>
[jc: Backport to 5.4]<br>
&gt; Signed-off-by: Jian Cai &lt;<a href=3D"mailto:caij2003@gmail.com" targ=
et=3D"_blank">caij2003@gmail.com</a>&gt;<br>
<br>
I usually like to notate why the patch did not apply cleanly so that it<br>
is easier for others to audit, such as:<br>
<br>
[jc: Fixed conflicts due to lack of 34fdce6981b969]<br>
<br>
That is merely a suggestion, not required by any means.<br>
<br>
Otherwise, the backport seems obvious fine to me.<br>
<br>
Cheers,<br>
Nathan<br>
<br>
&gt; ---<br>
&gt;=C2=A0 arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S<br>
&gt; b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S<br>
&gt; index d9b734d0c8cc..3c6e01520a97 100644<br>
&gt; --- a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S<br>
&gt; +++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S<br>
&gt; @@ -170,7 +170,7 @@ continue_block:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0## branch into array<br>
&gt;=C2=A0 =C2=A0lea jump_table(%rip), bufp<br>
&gt; - movzxw=C2=A0 (bufp, %rax, 2), len<br>
&gt; + movzwq=C2=A0 (bufp, %rax, 2), len<br>
&gt;=C2=A0 =C2=A0lea crc_array(%rip), bufp<br>
&gt;=C2=A0 =C2=A0lea=C2=A0 =C2=A0 =C2=A0(bufp, len, 1), bufp<br>
&gt;=C2=A0 =C2=A0JMP_NOSPEC bufp<br>
&gt; -- <br>
&gt; 2.29.1.341.ge80a0c044ae-goog<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCL%2Bb_qvvEHFz5g416Kdfzy3nZQnizow9-C9k1=
pw%3DZeoKJA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CA%2BSOCL%2Bb_qvvEHFz5g416Kdf=
zy3nZQnizow9-C9k1pw%3DZeoKJA%40mail.gmail.com</a>.<br />

--00000000000064f8a805b2e858be--
