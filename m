Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOWFXD4AKGQE3TLURUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8E121FFFD
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 23:25:15 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id l8sf36214vkm.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 14:25:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594761914; cv=pass;
        d=google.com; s=arc-20160816;
        b=0WejLhW+FuS1EOBHXj3bl2EUPUNQbZZFRwATXWuDDGrSyqL8oOrDPICQNYaGZMgRY9
         /cCNzjI91HwCdp43YrvmoED6Y+NCdNFJDiy9HHKWzqaRycWlzHL3cRYcE6cpb0Eowzm3
         A/GWVPKcn/7BNdAQd9efn63TG1ZLJEJ1QTokb2KBslrlACc0Q2be3mIKrQCfWw4cdAhw
         2EJOyUi1HysNqzyhnsMvHNq7MCfsI3eg2s/6z6Wf26w+2n2/sHs2c2KeYtn7enp3rxB9
         L3ObUnpPoLRu4jLGiDqmWnSi29St8k8RSpg6U1YERKlYD1oQ8gDGCBg/kx3lEuO3pKUp
         Q5YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=nP7PtLSndqfR9hEgjEWEoFMxiiuVthWDenGtoRPt7X8=;
        b=ULP6lJSL6xbzOrKu9MQliz7joqOetjpGwayt7zmkw4+sdDRHEa/A6uqAJeLWt1zFMK
         vNxbjR3bbgXkdn1xIdj1TxSiokzOGakSj2MzIHrU9ep0b1ww8TL20qi6Rn6gPww4BloG
         XXNvgdZZJUYCaTY3gPsI5XGNakQTFyzyPwWVT/WVctk/eZT41DoyE6vKGPzdjFGEfGy/
         h2AjfAlAGZkDyzt0uehBKTc9gKQvlke8qNoL+P2X3mguxLj9LP/q09z49Tya2OrHFXu/
         a0wcFfipRDOFM+xkr5wk+4V8LlJvChNkIx2y/WxiXXe/Tav/De0pFK7BbUVRWn3td0L2
         wd/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n53OwyNz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nP7PtLSndqfR9hEgjEWEoFMxiiuVthWDenGtoRPt7X8=;
        b=I0/qmy33eMEA9YQktZ77xGDTSYIw6ZqLns5Mu3AGPCzHnGQbIanXGhhP/0X4GPrQVe
         Y4UMVekxp+Yj9SmX0RzPhTn1Hxvh6NMfo6nOtBp+48NUZ8FCATyEhiVepL9OviPZdmay
         3RbCL68NpVXSt9hmvNh0gU6B7QD0Z7pYep3V3yJyxPeIT9oxG4AUp546diqdyLOWVe0a
         sS8mu4T/OIuQ8poCyppvfy+yBb4V+hLaW28UGLJWyAnZGc2K7NTf0fkIYzGZsP5aRAP9
         8r83rpghSF6DbkW0qo8psMVUPa0FheMnjWMJoFVTSEsxEXv+EDBGW3+Nq/0RqSPifcdl
         1kHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nP7PtLSndqfR9hEgjEWEoFMxiiuVthWDenGtoRPt7X8=;
        b=ibA7zi5SxekPB3d+zuD6di3gJ9M218hYIPeQ6aiFmacpk50kYegqU7cgP+xPEyRn5i
         4cufhuX09lN/cFGrTAvYq/y1C3uN7I4BNsCDpeGKYaazhAZRLbWGsyD5obeUPJCqxj4d
         YJ932eSAdTM00IoFI7Bvasiv7AD1cGZ1NsN8plMjo4A+Nh05aNPJ41ZeFRy5ml8egB3/
         1baVL1toU3nHWep0nOZ0JH3IR9zrUqVY00QtmiPNT5+q3o6ntMtBofCc3216G91f8oNJ
         PS9+k/lCDn2ugFIVfOF1gxilwP9lPzX8CTmNRw0iczDqQbEXGQZjRzhaAWqEMccz9I/h
         F40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nP7PtLSndqfR9hEgjEWEoFMxiiuVthWDenGtoRPt7X8=;
        b=k7218lyu5Z3VmU1zUCFRFpvCVmWd1xJV0Sw6LFgEvZNDblZWnvzT80QVq/TKi8e7IV
         Vh4RF3sdu18roe3a9EgaUaxzs1NC9iET1fd1yNRYRotwq/8Z8CwOke1xdFW+6XMS4JvI
         ndaNpFSQTs4t5mVMEN9y1DRHw7PCLOEFCFD+CQPTAGmJKVMhCldXCRb72M5sib3eowVc
         4OIXnaS1MiWwftLXZd2iPuVHOk/kNF/7DmyjHLdxNV6Ky7EDgEgKfAylPGDUdS8xX0kT
         nFzUOazFfbEM1oJUNW5inyNHC8liMPLQksLkcvkthhl9yb2snisTwIvnTVlxTY1fq3b0
         EH2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324ZI3TPsJFAwtiM9s6SYtKcrmMDJFnBDqJ1hQylaWH9NoPDT9+
	Mc4CQD6U1rEHAz56j+bQ5zM=
X-Google-Smtp-Source: ABdhPJwDq5itkm67899CWuoWWG0gMzEGduXc07hcdZnePwrgmxXdz8rVjla5ED0twliipeL86HkwDA==
X-Received: by 2002:ab0:6715:: with SMTP id q21mr5058380uam.37.1594761914511;
        Tue, 14 Jul 2020 14:25:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5e92:: with SMTP id y18ls922660uag.4.gmail; Tue, 14 Jul
 2020 14:25:14 -0700 (PDT)
X-Received: by 2002:ab0:6510:: with SMTP id w16mr4855065uam.97.1594761914056;
        Tue, 14 Jul 2020 14:25:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594761914; cv=none;
        d=google.com; s=arc-20160816;
        b=MfQQadhKjjnhYqLu0xR9uHJovqP4Jy9zHPS0B8yXAyTtmDUkKrvo7O494DA8sfF6mb
         s7lh7JMpXXNnkPyv0U39eGW9mXAX8fI0Ygd/ZvSLQtYI4MapOcELHskFCibMkI46ChkE
         VIHw/7wLAe2MVM4nOOuBkZOMBbUsLWyvXZklUcmCfnH421ugiSGMNWiwdiIv0DU5okgX
         KFGJYZvuhbDP3sNl2bjcr8Gu9SAaxbjriwc/RQzUcOwReg1qdclwRKwmsll7WeWevcZp
         lGdY7xCRw7ZAXo8ElTgSUaVWU2y28/sedc8xeo172bUKv6uuHYZzIIicJN04RetzgUot
         dNbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IYcUzYLWdCOwJkzm0Unwf59CwuQM45RI38n3CifvXpE=;
        b=at4Wnz3OIqTdQPgcD9rNOm/gGdPcAvDltYmbHEa/MFgPJyjr+i76Wl5uRaDxqi7Xew
         Cv/qr8gCSpujtL+IrHANueB+f89qNfKggcfGKOnsbIX/CCBsQgxapFcCJsfD+y0k+Cx+
         Xi5KbF/xD+ZBzFUp/TDmhEI4Sv1X97wCY6+HIaMZZnm2LjIVl5kmWt6zgi3dc6UGtXdG
         jqUkHZTUAgbEcbZSiHlzynS5gqX2B9RQdVXfk/NPX0nWs6oC+Ku29VzcfiO/OGA/1vc8
         w6LUOGEPPQ3c662cX3XD/SaabUDT3s4+4ZvBDZXmn9KMzuVps8gZqiM3JU6VgFpzpIyz
         sKuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n53OwyNz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id c186si16802vke.3.2020.07.14.14.25.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 14:25:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id i18so75345ilk.10
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 14:25:14 -0700 (PDT)
X-Received: by 2002:a92:d843:: with SMTP id h3mr6983535ilq.255.1594761913542;
 Tue, 14 Jul 2020 14:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan> <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com>
 <20200714202100.GB902932@rani.riverdale.lan> <CA+icZUVcyAfXqyAQp+bjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA@mail.gmail.com>
 <CA+icZUUtcQhzO=1KToJyhL0-kWFvV6Ow49u_28Ez9AhvkVjWEw@mail.gmail.com>
 <20200714203537.GD902932@rani.riverdale.lan> <CA+icZUX93x_vhG-j+H+ktC_vt1d0f-KWZ+0L+hf1dnr=0L9h7g@mail.gmail.com>
 <20200714210745.GA918357@rani.riverdale.lan>
In-Reply-To: <20200714210745.GA918357@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 23:25:01 +0200
Message-ID: <CA+icZUXLPGshxVJnhtRr4iF5ZviB2jgRTm_r__qddgL=QOMcCA@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary="0000000000005baef705aa6d719a"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=n53OwyNz;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

--0000000000005baef705aa6d719a
Content-Type: text/plain; charset="UTF-8"

Arvind Sankar <nivedita@alum.mit.edu> schrieb am Di., 14. Juli 2020, 23:07:

> On Tue, Jul 14, 2020 at 10:43:11PM +0200, Sedat Dilek wrote:
> > If we move to LDFLAGS_vmlinux we can drop the "call ld-option" as both
> > linker GNU/ld.bfd and LLVM/lld.ld support this?
>
> No, because ld.bfd only started supporting it from v2.26, and the kernel
> aims to be buildable with v2.23.
>

OK.
I cannot say much to ld.bfd and ld.lld with which version they support this.

>
> >
> > Do we need to adjust the comments?
> >  # Compressed kernel should be built as PIE since it may be loaded at any
> >  # address by the bootloader
> >
>
> It looks fine, no?
>

"My head is empty."
K. Anan

Today is not my day - no good ideas.

- Sedat -

>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXLPGshxVJnhtRr4iF5ZviB2jgRTm_r__qddgL%3DQOMcCA%40mail.gmail.com.

--0000000000005baef705aa6d719a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Arvind Sankar &lt;<a href=3D"mailto:nivedita@alum.mit.=
edu">nivedita@alum.mit.edu</a>&gt; schrieb am Di., 14. Juli 2020, 23:07:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">On Tue, Jul 14, 2020 at 10:43:11PM +0=
200, Sedat Dilek wrote:<br>
&gt; If we move to LDFLAGS_vmlinux we can drop the &quot;call ld-option&quo=
t; as both<br>
&gt; linker GNU/ld.bfd and LLVM/lld.ld support this?<br>
<br>
No, because ld.bfd only started supporting it from v2.26, and the kernel<br=
>
aims to be buildable with v2.23.<br></blockquote></div></div><div dir=3D"au=
to"><br></div><div dir=3D"auto">OK.</div><div dir=3D"auto">I cannot say muc=
h to ld.bfd and ld.lld with which version they support this.</div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; <br>
&gt; Do we need to adjust the comments?<br>
&gt;=C2=A0 # Compressed kernel should be built as PIE since it may be loade=
d at any<br>
&gt;=C2=A0 # address by the bootloader<br>
&gt; <br>
<br>
It looks fine, no?<br></blockquote></div></div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">&quot;My head is empty.&quot;</div><div dir=3D"auto">K. A=
nan</div><div dir=3D"auto"><br></div><div dir=3D"auto">Today is not my day =
- no good ideas.</div><div dir=3D"auto"><br></div><div dir=3D"auto">- Sedat=
 -</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BicZUXLPGshxVJnhtRr4iF5ZviB2jgRTm_r__qddgL=
%3DQOMcCA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXLPGshxVJnhtRr4iF5ZviB=
2jgRTm_r__qddgL%3DQOMcCA%40mail.gmail.com</a>.<br />

--0000000000005baef705aa6d719a--
