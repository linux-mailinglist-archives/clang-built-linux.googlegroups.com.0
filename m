Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBHVLU6AAMGQEEXOC36I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D38C2FF459
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 20:27:27 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id c21sf2398744pjr.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 11:27:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611257246; cv=pass;
        d=google.com; s=arc-20160816;
        b=NMhfG4aY3VXHQ8XCpYQ6j4INWPUGNLbheBKwTGmU0cPe/z7BjDAbhlDC1j9+H4cg2X
         nbKxjgL2IX1JvHY7dHUMQV629Rc1bTgwddAsKNBLl0f0CIJUZ2Xn1C5yDL5jLesmwFf9
         eFEMNw6GZvEuxkITcdw/p1qAfmV+ytN0ztLXPHWbF4GG9fsICp0aw/W4Rxl5E+QhjhvJ
         vpuIleqnqweWojkvfcvsLWygWVAUCEeTaNb9rgHCZEB8UTOWpKYxjnf87BUvCi1b3Z0Q
         1AnkVedWYRIuaeNebUf6haIwwRuB1Je3UCpYrQMT+EHIbxvhIbBJPZzeknQY6PR7CQbz
         TLZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9ekh0epSgfQcgWKXdaGMEN9VGhDuaYxmEfCi9lVj+/g=;
        b=x1QmLizmN0zZeABUDoXO/nQKiay/rVTN9gGG7hYqAIp861YtOzXcamCM0+2nF3PEp1
         OHb0B2nYgsYmiQLA1Hj0Bk4ATwqvz5yTBk7+OC6jKN5dteSd3jZDrFVelmUFFkVnHkDc
         fhHfnrScWHKzpRFOncbambE5dl+L2bhTQJVbFbhIyP+ksySAy0RPCVmWPFyAAoXA+/fU
         mU59ekKTJ0ru7xOjFnEMN6WXSi9N42qx0Z3QwE1YM39eoRV0pt4d9ZQlh9VHD64UzyB1
         a/UnFVf6M/+8DcW3lEngv2Rv7Xi9mhgJmrU5ew/llR6KMpzPE2A7rZll+ztoobJvWYu8
         2ACg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uW+bEYcf;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9ekh0epSgfQcgWKXdaGMEN9VGhDuaYxmEfCi9lVj+/g=;
        b=o46pmb9WNlpc3j1pU8SZmX1/gDUofEXxjswtyypeEWy+iCyZwkoCE92aYEBMeaL5mX
         zBOiSh9wGitocWX21LbWgXqoveHEqxvhtapyXmi94XWrcJgzbZO6GU0Ssz+Ca7Nk5yTA
         fkVXVHFGHYd6vGDPw++o47iWTrnG69V6W4WglpQADiLRkDWyXGrKEhJ4tmsq7bmtJJyJ
         ua3PaPB1H+MXyyBInLXiRTUywqfd5mja2fSjf+t6w5f8LL+ffYrX/7159pmIhhQFHF8i
         SpyNOP6/RJKIDC19IFrEud85fPtaKgMmOqaXl942NO9Qn+XpSb5b1kjWizzrX/Ex8uQm
         SauQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9ekh0epSgfQcgWKXdaGMEN9VGhDuaYxmEfCi9lVj+/g=;
        b=MdkAqV4B8hiA3WAMuvsl4iyf9l6eEpJYXjGmSbNKxuuWw7qCXU/tf7e6t/vRHCT/cy
         cXCEiFKLdD8wphPyG570kNwAq6t9Plks2tEfwooIvyqUK0yMZUT9FpZxYnedwq61P5c/
         Ww/zrl4YobMRcePKF/2kwUlbv0D+F/MRhaXtrBJA2i2V5EvX4GAmnbTUVw35BvKCFyNo
         77M15ljIdrbYg7cMkO+cf7z6wJGwtMIAuNPqWsBS07Ffits4YBq7hylh8zKgmpeuiqBe
         AMA+dKMtPuE8jHfm/Pi1Slijo2ctXyUgkJp3KDir/Z84j4EE2SAthbTG+16PIVWE6KPe
         kjRw==
X-Gm-Message-State: AOAM532sBA7JMONv25mdGk3yn3EU493WWELJTE0U8z24J8GshuNTHQmg
	LiQ3EQo9OU+N1/Ife+PvxGM=
X-Google-Smtp-Source: ABdhPJxtiuiR2T+HCpM2zqkkWxj8H2XKXcd87GDuLOmXgSZr5zzt6EzF0Cn7FZzi1S7D9ctWOPa/BQ==
X-Received: by 2002:a17:90a:de95:: with SMTP id n21mr976891pjv.7.1611257246382;
        Thu, 21 Jan 2021 11:27:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c205:: with SMTP id 5ls1544653pll.11.gmail; Thu, 21
 Jan 2021 11:27:25 -0800 (PST)
X-Received: by 2002:a17:902:70c6:b029:df:d62a:8c69 with SMTP id l6-20020a17090270c6b02900dfd62a8c69mr1224522plt.20.1611257245764;
        Thu, 21 Jan 2021 11:27:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611257245; cv=none;
        d=google.com; s=arc-20160816;
        b=iM/Q6b8pgWJOW9vQD9XIL8wlssI3C+sPfW03Ri1SCZ8X235z8xLwJ4KIpG4dtagNHK
         JR7nAiCmsuQDGYmstJgGMcNITcuJwuOOFu3PCXMB2MEsFNeMe9cyuVVJbTtZFxUYhHaF
         vcF5FqZvOyqsYcetmrz+9MBxc8I23ilqyLc9FKpnnSm+GH6MbbElE+ZZj3VQEoMU+n/Y
         /rz6OtMDdZVc7G4zWb4JApus9dMoSBAcwHen8wjo/uDZdk3/lWcjrUW6AJ7Ts5Putswf
         83Lz8SmuNvwnYFQhWp0J3rlmexkOekt2peKdly50jTZmZOj13CBJ4M5G3WjzEG8mkszV
         SUpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cgVcN7g3XBJ+z+H60O8B5qTaxrhv0XOwmqAHspgf1xk=;
        b=rB3qgeW+F2Ctecb7T9+fWpuv97iQ2e62mwscPML0il10x7q8SQjtzFh9S6ZQ6X+5fK
         smGlh6hl0lL4UKn+F04ZrldaUPvd47L4Z0GmINl0fXFyybSHeao2n+pjgJu26IEijHwp
         OH6vpYmJc2ouJKzOuZ2mFlvV3XEKpvaFb1U4h5j44h/3ovZ49LRvS6vkg18C1rhQNb65
         pZOnDcagEczgJ+7bUXmKw4umBmylTCzHO9JqjaW6b8gFF30ZWDdqIAAXi+4SiRM6ZtEY
         aReOi8lxczQpkQolnVxgDV/YB3xN0ph8z4/fSx0BBEUgmvpjNh81vwlnssCzKIkHmhbA
         1+lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uW+bEYcf;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id b19si354430pgh.3.2021.01.21.11.27.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 11:27:25 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Received: by mail-ot1-x333.google.com with SMTP id h14so2733629otr.4
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 11:27:25 -0800 (PST)
X-Received: by 2002:a05:6830:3494:: with SMTP id c20mr521340otu.25.1611257244968;
 Thu, 21 Jan 2021 11:27:24 -0800 (PST)
MIME-Version: 1.0
References: <CA+SOCLLdvphxVeH+SvaibixLxdwHd+sC-qc=JdLKQoTN-H0waQ@mail.gmail.com>
 <YAl3Afu4hXlhJQIv@kroah.com> <YAl3WKqH/xfGyAcu@kroah.com>
In-Reply-To: <YAl3WKqH/xfGyAcu@kroah.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Jan 2021 11:27:14 -0800
Message-ID: <CA+SOCLLW8q2wUjGEzv+Pe_FMGR8TLu9ZYXnLF8VLAvErG+P0uQ@mail.gmail.com>
Subject: Re: 78762b0e79bc1dd01347be061abdf505202152c9 for linux-5.4y
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	Jiri Slaby <jirislaby@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@suse.de>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Alistair Delva <adelva@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>
Content-Type: multipart/alternative; boundary="000000000000bac63105b96e0fb3"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uW+bEYcf;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::333
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

--000000000000bac63105b96e0fb3
Content-Type: text/plain; charset="UTF-8"

Hi Greg,

6e7b64b9dd6d ("elfcore: fix building with clang") is indeed what I meant.
Sorry for the incorrect subject and any confusion it caused.

Thanks,
Jian

On Thu, Jan 21, 2021 at 4:45 AM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Jan 21, 2021 at 01:43:45PM +0100, Greg KH wrote:
> > On Wed, Jan 20, 2021 at 03:28:10PM -0800, Jian Cai wrote:
> > > Dear stable kernel maintainers,
> > >
> > > Please consider applying the following patch for LLVM_IAS=1 support on
> > > Chrome OS:
> > > commit 6e7b64b9dd6d "elfcore: fix building with clang"
> > >
> > > Please find in the attached a slightly changed patch due to missing
> > > upstream commit 7a896028adcf. This patch would fix an issue similar to
> the
> > > one fixed by another upstream patch (
> > >
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.4.y&id=070bd3a8ac55
> )
> > > that has been included in 5.4.
> >
> > But 78762b0e79bc ("x86/asm/32: Add ENDs to some functions and relabel
> > with SYM_CODE_*") is in the 5.4.90 kernel release, so are you sure this
> > is still correct and will work properly?
> >
> > And your subject is odd, as again, that commit is already in 5.4.90 :)
>
> I've just queued up 6e7b64b9dd6d ("elfcore: fix building with clang") to
> the 5.4.y queue directly, if it's incorrect, please let me know.
>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/YAl3WKqH/xfGyAcu%40kroah.com
> .
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLW8q2wUjGEzv%2BPe_FMGR8TLu9ZYXnLF8VLAvErG%2BP0uQ%40mail.gmail.com.

--000000000000bac63105b96e0fb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Greg,</div><div><br></div><div>6e=
7b64b9dd6d (&quot;elfcore: fix building with clang&quot;) is indeed what I =
meant. Sorry for the incorrect subject and any confusion it caused.</div><d=
iv><br></div><div>Thanks,</div><div>Jian</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 21, 2021 at 4:45 =
AM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfo=
undation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On Thu, Jan 21, 2021 at 01:43:45PM +0100, Greg KH wrote:<br>
&gt; On Wed, Jan 20, 2021 at 03:28:10PM -0800, Jian Cai wrote:<br>
&gt; &gt; Dear stable kernel maintainers,<br>
&gt; &gt; <br>
&gt; &gt; Please consider applying the following patch for LLVM_IAS=3D1 sup=
port on<br>
&gt; &gt; Chrome OS:<br>
&gt; &gt; commit 6e7b64b9dd6d &quot;elfcore: fix building with clang&quot;<=
br>
&gt; &gt; <br>
&gt; &gt; Please find in the attached a slightly changed patch due to missi=
ng<br>
&gt; &gt; upstream commit 7a896028adcf. This patch would fix an issue simil=
ar to the<br>
&gt; &gt; one fixed by another upstream patch (<br>
&gt; &gt; <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/stable=
/linux.git/commit/?h=3Dlinux-5.4.y&amp;id=3D070bd3a8ac55" rel=3D"noreferrer=
" target=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/stable/=
linux.git/commit/?h=3Dlinux-5.4.y&amp;id=3D070bd3a8ac55</a>)<br>
&gt; &gt; that has been included in 5.4.<br>
&gt; <br>
&gt; But 78762b0e79bc (&quot;x86/asm/32: Add ENDs to some functions and rel=
abel<br>
&gt; with SYM_CODE_*&quot;) is in the 5.4.90 kernel release, so are you sur=
e this<br>
&gt; is still correct and will work properly?<br>
&gt; <br>
&gt; And your subject is odd, as again, that commit is already in 5.4.90 :)=
<br>
<br>
I&#39;ve just queued up 6e7b64b9dd6d (&quot;elfcore: fix building with clan=
g&quot;) to<br>
the 5.4.y queue directly, if it&#39;s incorrect, please let me know.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/YAl3WKqH/xfGyAcu%40kroah.com" rel=3D"noreferre=
r" target=3D"_blank">https://groups.google.com/d/msgid/clang-built-linux/YA=
l3WKqH/xfGyAcu%40kroah.com</a>.<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLLW8q2wUjGEzv%2BPe_FMGR8TLu9ZYXnLF8VLA=
vErG%2BP0uQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLW8q2wUjGEzv%2BPe_FM=
GR8TLu9ZYXnLF8VLAvErG%2BP0uQ%40mail.gmail.com</a>.<br />

--000000000000bac63105b96e0fb3--
