Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXHJX7XQKGQEIK4YKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 872411190E0
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 20:41:18 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id l13sf11217775pgt.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 11:41:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576006877; cv=pass;
        d=google.com; s=arc-20160816;
        b=UjP3mid/vrkv5YKZKwH3lDslpGad4RiMDzy30/pNi0y5pw/3gqPA7Txl7Wis5zw23J
         bBlWEIVwEM4LnzK+HK7mgCcT9Gh9CO2RtpVutIHltfJlIrklDiX/1scJGj6Cdnbd+Aj7
         QMsw2lRqfR8D3CztXoZBZSnqsANI2maOAjqLUCS6H/yDc33ZBAhX8nzNW44Eps+2w0vO
         PyBAVM60IcBX53PEUQjG0u7KuH84RVbKk4hkAegMC9+O6Y+3O7zv7AFQFieETvWgzsvB
         rnOshxouayxLBWysd4NieVck+M4BKzt2CrssBRdgshj64dG+KWx7sVXeR9OPKa8TS7SI
         iIRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=COQz8w76kjmLRpfVLyet/yBcLKSU4Vi/piFG5VrQ3+w=;
        b=psGQBcrRj5VDyulMsjSVi7kJ+n+1wDkCz/f9Hm1DnfdTfPoP6BXLotrSobYKjY/7FF
         KsEUOYIBr4Q2rSfGga1znMan9Fq9trmz0Pb4TEbTby3yRHyAJpB2F2tIhQslSv19tXJr
         hCl8yz5V8iTUOIHCeRDFpHcCmi00kznjsVTGEcJyuAYpLpiHslwvOAFOeiRWxq9sQTAt
         CbNMVhZYa/xM2FmsUq9dAtPpmjmoSchWTbQEwE8RFnsQdHnUxMowxn8zGhnba3xaAhiz
         FjLBe1shIvMho9KucgNUOwAS0AQjvoVy8BCyiHmuvwc5nwgyx902JY3qJ4ok2JFrTXAi
         +j6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cG5STPDb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=COQz8w76kjmLRpfVLyet/yBcLKSU4Vi/piFG5VrQ3+w=;
        b=WdIx9jGThRofx3e8AAjMeS//cO2ia/TaAEcaS1q2KGBJr4+cIPfz/IOmm6Br4mgfJi
         LcsAAupHoFrfEfMbtL6KEWzt11CH7f+3LO2t/LQuLmgvpwRh34Vp7SVJCbY2Yet0wLrN
         rIaBrjhQj8kbe12RJ+8MFNLLF9lAikEM+EJ8pA3aQ+Rf7FPB/Ng0hbx70/J9DuS6H7Ui
         E7uDOyUZrZ/9e+tQMqVOhHxZr++bgcNe/GEr6a2Nm/nuPtk19f9qwV9z5po93wC0j2Zb
         da7774LytJ8EO/X2DDFGz6X3WnpUGtZXmKyl6ajUwdBQMLVEgfUgoXN3VXOmSZO0p6/b
         6h8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=COQz8w76kjmLRpfVLyet/yBcLKSU4Vi/piFG5VrQ3+w=;
        b=jS3a0nwBjPFjCa0OwNnYr3THhU/P3ELp9RqlN2G+u9n+6G6qmrWfkOeowwNLCWN3zn
         uWqqI4to6gwctGw2cj/GHt/baETfaT9vjQkXKol5Nw2Qe1/nwvtLGHHVU57dlQ4n5Omu
         7Qy417Nrm7NMabuD9K4T51b9bLFN/fvE2kfGb9VKCeV+6fRwuvaZGrv1gJsezp4cAlPZ
         hh6iEhYl32IH+RIk0OfC2hOvtMdu15tUV3QlCS4yNrY3mFy2PgLc2yosGOCku7eBdsBM
         XwKqoNN8r4NEOOhw4MlOwB3A21jhkqsHcpKWcnWLngFzu+56yL2goTwyY3zosaSHMFHt
         lMZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=COQz8w76kjmLRpfVLyet/yBcLKSU4Vi/piFG5VrQ3+w=;
        b=sfTwAIPZJkAG2iYWtYQ8ecyjajnDi2WEf9XCbLMo6AT7unvSyEErhfO95pZc5E46zw
         xfEsevCcpD2dERyuduvt4BP9hc5nPU/eRhL8M39BnIAcKTJpy59vhCwXInP+NCVR7Uk1
         HeZUj82j/Z1Cj3piW26FO8N/LLa8lQKdEPUWxqQSBb6RCSSV0/9Qa1+eXqQcXJRxSSkC
         w1A1VxTiemJSzHd3uLQJ+upCHcUa3AZs+AbvfS3wtOZg+jeGgbmv5vqx1g+7c2NF15LV
         xOT9zJGhayyh9Vb8GXj1nSEpkXb7prZJ8YluGp76KwtQQDNtz8MbosuEyfgaZPqvybmY
         BtBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFxRNd5rLTmC8e+eF0gH3hvE7fgMwYXlzdKNPuKUvZbjblLZFt
	cPJRMgfAbwyqOPoDRfxuKN8=
X-Google-Smtp-Source: APXvYqw/+7n1O5H7nl4GsnOyeBGjBC6/X9skcIwGmtVsZVuB+fklePGCFNo2rchBcGbNaeKRBKB8Mw==
X-Received: by 2002:a62:1883:: with SMTP id 125mr18771668pfy.166.1576006876632;
        Tue, 10 Dec 2019 11:41:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a92:: with SMTP id w18ls4703210plp.7.gmail; Tue, 10
 Dec 2019 11:41:16 -0800 (PST)
X-Received: by 2002:a17:90b:941:: with SMTP id dw1mr7227629pjb.21.1576006876226;
        Tue, 10 Dec 2019 11:41:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576006876; cv=none;
        d=google.com; s=arc-20160816;
        b=KtCHjyMCsyrtxa71rNFzfCJwifgCF0z9dBkzAY3nsuLdojYEB75fxzr+GxOKRDIqf+
         SsLZ4p2nl4v6Mb+eWUgIeAXBS8jqWGp+o9vNlNat2NJcDINdzODuTFsj3Q4LWC4w9xVg
         yNd0/XAi7iS+EFEHMoCe/uy87jkdVuBT6toGRpnSnYqTNeQaf2txSChG9h9mqnhxgwtb
         eM/ixtS71vW2UfQCjn2DQ5wqPicNl/OMVwgi3biKC3VEre1WFdgcCFcEcFolitHhXdHS
         Ty6F3UHXjXHxlH3pjpm0SLjjHyuSTkIZxzHe36mySMxfkOdUFMqdlMWwlLH0aewAAJn4
         zvLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R83QtXeO25iJn8IIxnah9iFn17pE1UtDQO4xFZfF6uY=;
        b=czVmmQwCdrLTeQOThiFY4EvjFyAu0bJqW2WqmYUkiL+3EcEX2z3vOcjPU9lhqUxp+Y
         3ptN3aGflvtmYWEVmbV1dVJtRgVLRtXor6/8OzVXRiebv8W7k0zDak2yKy5yfSmBRest
         M3dVtXuBQ74lVE5zISNVZflGkAHJpdpfJaGhW/vznZ+0xewbH2sWN1kXp2cBrXfm206b
         RLvddc//+iqNPApTuUukH7hbc42bGJScgP2owQrh6sn3cPPGZ3iBT6H90JaNVcYWPXew
         3eOaYms8bZFGY3gHnVHKE6FSS5Eg03lGavcgxky5CMErM0v6rsFqhECccgkW5s7Xu4eB
         CG1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cG5STPDb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id e17si142963pjp.2.2019.12.10.11.41.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2019 11:41:16 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id r27so16579147otc.8
        for <clang-built-linux@googlegroups.com>; Tue, 10 Dec 2019 11:41:16 -0800 (PST)
X-Received: by 2002:a05:6830:1492:: with SMTP id s18mr27774328otq.285.1576006875389;
        Tue, 10 Dec 2019 11:41:15 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id f85sm1758884oib.38.2019.12.10.11.41.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Dec 2019 11:41:14 -0800 (PST)
Date: Tue, 10 Dec 2019 12:41:13 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Miller <davem@davemloft.net>
Cc: netdev@vger.kernel.org, linux-parisc@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: tulip: Adjust indentation in
 {dmfe,uli526x}_init_module
Message-ID: <20191210194113.GA10106@ubuntu-m2-xlarge-x86>
References: <20191209211623.44166-1-natechancellor@gmail.com>
 <20191209.202920.1031568566965416683.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191209.202920.1031568566965416683.davem@davemloft.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cG5STPDb;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Dec 09, 2019 at 08:29:20PM -0800, David Miller wrote:
> From: Nathan Chancellor <natechancellor@gmail.com>
> Date: Mon,  9 Dec 2019 14:16:23 -0700
> 
> > Clang warns:
> > 
> > ../drivers/net/ethernet/dec/tulip/uli526x.c:1812:3: warning: misleading
> > indentation; statement is not part of the previous 'if'
> > [-Wmisleading-indentation]
> >         switch (mode) {
> >         ^
> > ../drivers/net/ethernet/dec/tulip/uli526x.c:1809:2: note: previous
> > statement is here
> >         if (cr6set)
> >         ^
> > 1 warning generated.
> > 
> > ../drivers/net/ethernet/dec/tulip/dmfe.c:2217:3: warning: misleading
> > indentation; statement is not part of the previous 'if'
> > [-Wmisleading-indentation]
> >         switch(mode) {
> >         ^
> > ../drivers/net/ethernet/dec/tulip/dmfe.c:2214:2: note: previous
> > statement is here
> >         if (cr6set)
> >         ^
> > 1 warning generated.
> > 
> > This warning occurs because there is a space before the tab on these
> > lines. Remove them so that the indentation is consistent with the Linux
> > kernel coding style and clang no longer warns.
> > 
> > While we are here, adjust the default block in dmfe_init_module to have
> > a proper break between the label and assignment and add a space between
> > the switch and opening parentheses to avoid a checkpatch warning.
> > 
> > Fixes: e1c3e5014040 ("[PATCH] initialisation cleanup for ULI526x-net-driver")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/795
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Applied, but it's really crummy that the tool gets tripped up by the
> fact that a space preceeds the TAB.  It's what the code visually looks
> like, not what exact kinds of SPACE characters were used to get there.

I agree. There is a follow up patch from the author of the warning that
claims to alieviate some of these but that is still in discussion and as
far as I understand it, it won't fix all of them so I'm just dealing
with all of them on the Linux side.

https://reviews.llvm.org/D71037

Thanks for picking them up!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210194113.GA10106%40ubuntu-m2-xlarge-x86.
