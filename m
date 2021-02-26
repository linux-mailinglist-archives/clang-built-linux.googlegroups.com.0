Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJV34WAQMGQENFZR5NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0EE3268D4
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 21:44:23 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id r79sf3683692lff.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 12:44:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614372263; cv=pass;
        d=google.com; s=arc-20160816;
        b=kPcC8hADhU69dfugcbFfLQa/8Ffk/DSujWPAKPmPwFByQ8hp0ed+JfxCzqBQ0h3pXd
         pzIzKvT0C4+zoRmJqkjwKOMgirxoOmEKWzkie+5UT6VeEibi/ELj65vxIjtfbQcJDcho
         OrGi11F1QH6UnIUOKhYbF/9/BNYQ2waEosyYTZFXTpTDdJrF4Ln8r5slULTM7727pLuI
         x8vdCHG6VLwoAYrXEKU6b9M52J2cYj47mQIdbKlTQKUWXN/0rY+B9bfCf9BL1qKXKxfu
         vObzc7Sqr7IRfNo24gJITJuEbbxWA3rr14qARPjVN/HsN+3ijIj0d6HXWzZqkGELewDm
         zo5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dG2J5NiKf4eXamr6qx1mNOVB4TTt2fM/aQqkEWyt8mU=;
        b=RaVTu6rTPVORbS3IdNnHDTE8XSsPiTBfNKv/b6ipVsj8W7sUeGeOxXLVudmrWjZMZW
         3tQqidI0B0h6TDaXKvtKGq+wsjadjwmKGxEk1zRYDZL86/3Xniq3nLqo3gGuD7J4PriS
         SLHVleNCHH/ovpyKoFxJsOqdUgGDB6rLH56BtLt/yM6e8vHqknlq9gztvvdkuLdXkdPc
         zqBSykjLRx4l3vzlm87GqtokAh8NYz5ChIPumeBAhUa1MabduRvDPs0WGIkNF3UV/zYq
         08snmMt3jBcL9D+VoQmguMH9QuKQmzEwWoLdjpItlkjlfm+UNnRmenXMYyqdiXsJbHKn
         znLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pumg86ne;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dG2J5NiKf4eXamr6qx1mNOVB4TTt2fM/aQqkEWyt8mU=;
        b=HdCrNBUineTdpkqbyMp9UZC/D+TBp4KvuVhrt6lEl00zJhFP/n5l/Jbae6h1Apg9hn
         Ik/tOoijZBgyHP4vXAoR2PnMvArEcnL9v+vZp37zKUn2DyFkWOo+13f/A8KNDOmYIqzk
         hmLbAI+j7IBaxgAeOToPVZIpXhfv64tWpdV/sPSRYtyzB8ZsrWtHQmlBseoUBElabiQT
         /e47Gpp8AWTmBm+lp6BUSXTI80u3LwVWx5fPu2+0bn2FlVjMhc6CnaUokG7Ax7QvahZ9
         VlxHKfExfnM1vx+7G5hsQlsVjXEypH9KMNDUsEv3IopVavuX5ykDJTq2QgaWvV3JKe+i
         Dwaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dG2J5NiKf4eXamr6qx1mNOVB4TTt2fM/aQqkEWyt8mU=;
        b=XqFljgZ5lC7MhsJ7rNZZJg5z918hGfU/D+HgQOL9NrqzuoRq6o3B+FSVKbH0Zz63xI
         T8xwSAQnW1Zv3mcLqUE+QfWvuQUMemYwsctbxXiele6wTD+Hsk31Omi68+v3JFA0YY1n
         xrk+UcG071JUcUtE5dQC1mdWAiepRMOoyeKhNYaftpts9UaT8hprckytKqyUTdjbnJH9
         gipangdGTAWeXTDca90w7gOYuKZGuFznKJf7b2rHP60RSppcUA4XdG+EXyffZhypv2aP
         mzXpY+5ROCNa47oBVCd/G/zWoODXqhW7vYTU7dgUvlFN01o+FB8uIB+Ix9Lf0Af/W3fV
         wu7Q==
X-Gm-Message-State: AOAM531chAJlTukSjk2ARJQBanmaHilHEQwNsdtoNKrDK+xQty2hN+yu
	SC+BWiNWm4YEEpLkWdp8k3s=
X-Google-Smtp-Source: ABdhPJykw4Qlg77Qc3717Qk3CLnBItxWT7BxPVL+79h7y3hL1Z6nlv+u3oTv80TbLptEcbGOx0pUag==
X-Received: by 2002:a05:651c:3c1:: with SMTP id f1mr1713343ljp.507.1614372262908;
        Fri, 26 Feb 2021 12:44:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls1794358lff.1.gmail; Fri, 26
 Feb 2021 12:44:21 -0800 (PST)
X-Received: by 2002:a05:6512:21a1:: with SMTP id c1mr2825980lft.272.1614372261832;
        Fri, 26 Feb 2021 12:44:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614372261; cv=none;
        d=google.com; s=arc-20160816;
        b=QBqKk1ZPrjoO8zizGYw9I87m4RZwMDQJRXcfYx1ss/f0+lFIpIx0+GOAxFCIH9DM1N
         K5dTX7KclR1hmj9n5LgsnqUKW/FutYra+9KsovPKRvpdPz0SStF6fVzGR+IK2SJeVDOW
         3VcwSaODLHMZBdk+OMYVJungZ64020ySubKxVGgeVZLvCjiI1K/YNxEeixKLHP07horV
         DX68ZgfhJYIg18NeNEwhDJCQ+p6Aqtg9TcXxEbcoELyUqMBPgFsksoNHeO8tlJVDYwTw
         BRkhZF5nLQrkDO3MDZyPB3SIuKCs6fTyTQhgfIeToURLSXl57Igr3nYtjhtFgWFRMLNU
         xYYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=29A6wUeViO/ygWKDHtMIH5IVCbp6pR6cMIeRcu0zT94=;
        b=1EZ0dZIT3swFQwahaJwuvl0fkx/nILUY+7sDKYCDhrgniesBQ8lyCQDsTWqsvgYtsB
         UK78HaLhajFMcFFHYuMdj1xh6vCjQ8sy78c0wWXIiGKdmLqisVcKd/frK7KkYKjiXml2
         TrBipkdIwT35Dz6PasMjWmtnSX4yLsWa8x+F9R1eKpKqAfdVO0tdHJIyLTsdv2LTHqLj
         KNwlmOm7rICtgWETUv+Uji3NLgFhn96D4gdlIWROoicSmvBZ/sI4AmqQOi+tDYqTlF/8
         /lFGu9ugCarDjU3TcxS3VuferqeG5F7b2gMjzkjYNtk66U8DSnDRw3wN0iFAdI/U9H/t
         pkMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pumg86ne;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id q26si506638ljj.4.2021.02.26.12.44.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 12:44:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id h4so11904694ljl.0
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 12:44:20 -0800 (PST)
X-Received: by 2002:a2e:2a83:: with SMTP id q125mr2650489ljq.244.1614372260389;
 Fri, 26 Feb 2021 12:44:20 -0800 (PST)
MIME-Version: 1.0
References: <CAG=0SSaASGLay-c-sT1b+-PBdnUxAMUtHPTevo9-qpOd8=yqaQ@mail.gmail.com>
 <20210226025806.GA19253@MSI.localdomain> <CAG=0SSZNeJOhr3yRP8ntar+xJV7sAQDvp_YhzPGNy9ePH+9Sug@mail.gmail.com>
In-Reply-To: <CAG=0SSZNeJOhr3yRP8ntar+xJV7sAQDvp_YhzPGNy9ePH+9Sug@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 26 Feb 2021 12:44:09 -0800
Message-ID: <CAKwvOd=bu=x2WE5xGYWYyVeUHcc7mJ-nrouKBavD_as4L4wpag@mail.gmail.com>
Subject: Re: x86 ThinLTO: BUG: unable to handle page fault
To: Victor MICHEL <vic.michel.web@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Pumg86ne;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Thu, Feb 25, 2021 at 7:37 PM Victor MICHEL <vic.michel.web@gmail.com> wrote:
>
> Thanks! Ah, I really should've looked for more than 5 seconds - yes,
> that resolves it
>
> Looks like a patch was already sent to linux-wireless:
> https://lore.kernel.org/linux-wireless/20210223140039.1708534-1-weiyongjun1@huawei.com/

You and Nathan should provide reviewed-by/tested-by tags for that,
directions at the bottom of that link on how to reply, just add the
Subject line to the top of an empty file with `Re: ` inserted and you
should be able to reply from the command line.  Linux needs testers
like yourself to help provide this valuable feedback!

>
> Sorry for the noise, and thanks :)
>
> Victor
>
>
> On Thu, Feb 25, 2021 at 6:58 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Thu, Feb 25, 2021 at 06:11:16PM -0800, Victor MICHEL wrote:
> > > Hello,
> > >
> > > I've been trying the recently-merged LTO patches on x86, but it
> > > consistently trips a BUG when I try to load my wifi driver (iwlwifi):
> > > BUG: unable to handle page fault for address: 0000000200000000
> > > The rest seems to work fine.
> > >
> > > The kernel was built from Linus' tree at commit 2c87f7a38f93.
> > > I cannot reproduce when compiling the same kernel without ThinLTO.

Cool, thanks for taking the time to test this, and report the observed failure!

> > >
> > > I attached the full backtrace & kernel config - happy to provide more
> > > info / try things out if needed!
> > >
> > > Cheers,
> > >
> > > Victor
> > >
> >
> > Thanks for the report!
> >
> > Does the below diff resolve it for you? Taking a stab in the dark.

Hey, looks just like the patch in -next, great intuition and thanks
for taking a look!

> >
> > Cheers,
> > Nathan
> >
> > diff --git a/drivers/net/wireless/intel/iwlwifi/mvm/fw.c b/drivers/net/wireless/intel/iwlwifi/mvm/fw.c
> > index 15e2773ce7e7..9d0cceee76b8 100644
> > --- a/drivers/net/wireless/intel/iwlwifi/mvm/fw.c
> > +++ b/drivers/net/wireless/intel/iwlwifi/mvm/fw.c
> > @@ -1083,6 +1083,7 @@ static const struct dmi_system_id dmi_ppag_approved_list[] = {
> >                         DMI_MATCH(DMI_SYS_VENDOR, "ASUSTek COMPUTER INC."),
> >                 },
> >         },
> > +       { /* Terminating entry */ }
> >  };
> >
> >  static int iwl_mvm_ppag_init(struct iwl_mvm *mvm)
>
> --
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dbu%3Dx2WE5xGYWYyVeUHcc7mJ-nrouKBavD_as4L4wpag%40mail.gmail.com.
