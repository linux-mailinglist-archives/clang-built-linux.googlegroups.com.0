Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB2N7QGAAMGQEGZEEYEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 425022F63F9
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 16:14:51 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id g7sf3486298pji.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 07:14:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610637290; cv=pass;
        d=google.com; s=arc-20160816;
        b=OT0ctSPJR/PnrWxLxEuzPrnBFIR+sASgcqnH9aSsATWqzVHU7AoW/UHRwK8IOJh2yj
         AyznyMGZnPEYacvw/gS8DnunDSrnp/rBOJW9FXd7pRN0460HT2QHNy27vc5yGJsFB58k
         PUXe+Xrm/beIhf4+AS8XfPQAI8IqI3O8/0OgrVYvtM9TA/6i3JBjc5P08j7pLRTuLcF/
         tH3oOyLrnMGBZvjmO1hpP3MH94sXKGvEqd8p0+8I5dsraaA9OOAn4vMm3vw1SAUgB4E7
         HlfKNPnNIlKeGTTw/wtpwOJNoVHOPtgiI8msXJ1l3blSFR7nVNOF+aVXL6JCssuXBPtz
         zMyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/yesIXeGsGNnXAb1bzsiP1GZAtK6g5LoYIJE8uACQeQ=;
        b=WprJJcHSXCMWDQSr7aaetJYL2Bfiel9niwIPEk22JcdJgW9l8DkPVJmI/cEKjeEQCE
         THa1PmxZTO6E/tQLqxyqAWNV1sUef98PlEr0thOctt1lICOzA81uIWJhD6UxG+cpJ4Qw
         4Zsy4SE2R/TjG9mKQ2/wdAtyw9aa525bE5W9as7VkMNi0jzuV6iJv7ULiIFrGIKemXHz
         wpTWoXnfaSWczaE93v0/O3JIMr2dM5XI9TbUvrBRxNfZ0K9Y17odzUfD+3XSp+eVS/zo
         SpzZBDKJvV8cOFjhemPDzcFaT789ANUJZGYavWJwaRC3hdsKmbtXiXiL3Me33AF4hUDI
         2HNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UZSUGYFk;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/yesIXeGsGNnXAb1bzsiP1GZAtK6g5LoYIJE8uACQeQ=;
        b=NWRqAtEo97QWE8KcYYCWD2y/xG5G1q/7QVOaVD+0S649hByaMJJ5e8wsSBinfP6xte
         9O6Uc9HkKJX2tfZTgFjXMGRnwCBhQxz+lxsw7HnjaH01bIvMPCjlNo374Zq/5tOeY2PN
         CsI/pituH3Knp+6LDiXSTCZg4klRBdpZM8f7Ai6KEal0L2K4e1/kfTkCEE4dfOVkAQM0
         DkSZXYoKMQBG82wvDK7+1VJCCUt0jvkXhl9AO0G3DEKN9MopqaFuxgk3bs+reFR1bmTU
         GxAv79Pk8IVGLvZCNa22M6S4hF9HOpU17qemeMbCyUTEOaJx2vXqWQU36dxD+jns39y7
         a8ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/yesIXeGsGNnXAb1bzsiP1GZAtK6g5LoYIJE8uACQeQ=;
        b=KTeb15QJDxpdrnsSfnuFK5xTZJdNFdZ4cbhOh4EkrpS9GqR9s+xDodt1k0PnJVFMub
         u+1R25t9FODNKd+E8G9AIMGcEaJSBEwiyLkMagMD8M89NpLB0zzrYa5WYWqZUVn7c2fQ
         GoXMoJc8j4tllPxR+oz30FZQeNWtfZdSx7HKuD9mOtnlsOXAV924TeEoHJ3BN7D9ghpd
         fYuYvBKWXDzhTocvNi39Wmf7kbHa1PKfaoHkfjymTT37TZe+4ec3Vo+8xY599KTeyDU2
         yn755fD23+5JWRNFC6bNI/5rD+7Gj4UmMku9pllF5h73olSdR0eq1RUV+MOAZBAy3fEP
         CP8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Rimvpq4kc5tM3csqNXKId8LB52UNPd4Qxm8vMZvWXMoaFlUH9
	k+EYFKzpDPHmS28xUZnwIyA=
X-Google-Smtp-Source: ABdhPJxBdipulhjM4uT+y0HPMdkBhOUbg27IjvrgSBcRcXQChh3PFIvkwnTSOVzfRmtkcYL7c9veuQ==
X-Received: by 2002:a62:2b49:0:b029:1ae:6b77:bd31 with SMTP id r70-20020a622b490000b02901ae6b77bd31mr7859543pfr.32.1610637289936;
        Thu, 14 Jan 2021 07:14:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls2875052plq.7.gmail; Thu, 14
 Jan 2021 07:14:49 -0800 (PST)
X-Received: by 2002:a17:902:c40c:b029:dc:9bc9:b98d with SMTP id k12-20020a170902c40cb02900dc9bc9b98dmr7915401plk.19.1610637289315;
        Thu, 14 Jan 2021 07:14:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610637289; cv=none;
        d=google.com; s=arc-20160816;
        b=Xzciccsnz4/VveYJfID6urqMCTRspSgbvWHdg3tOpKnRNTdqf/bNjs6Fbty+vJbko6
         Rxt5cChjbaGUc7KYDHXRagKIoxXb2d6h8+6/+j3QJRakof8sunLnsJ38FkBBr1uXOKf3
         rYsZZqNOmQbNUD8s6cjf/TNKUGiNJncRhqjyzJUdWR3WW4Mfc42G834KR57fRQJ5x0HR
         Q1GOh5UB9SVQkau74G15lKkD/YzzsTrXKzIWfR1+dtcW2Lzo4d+nUVcnl4bqI3c8Y+ju
         WYVh/lrRr/7BTwXw2c+cofE77fAZAWnzXHQH+Bjo+ZasD8uQjT+Uf0kwnmqwfwIDj9gZ
         et0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xebwHfHcV3Q7qy8BZ+3Wm/tS6e8Jbu19X2ks+jrPpcI=;
        b=mnEIE/oNP5B2PWGVcxvXRtd6R1B5TMQFKowMHjK1aGiO4bqewZVUZXmKYDqxms270w
         gip6AUF+pyAxoa0XDS9pLu8WTlWfVTakxdBJfqsjK3E8rTTsKVDDomg2zaj3BUQ9TmG0
         Pfc37em9vtUHhrPZMrHeMHxGs/y4o0jjI3e26HjE0XOQ423Z0ZRxfmeevSKA6b1zdqD2
         1sN8N8n/CP+ewjtCOmKcfoD5BP2N9iM0BUdbnM6HINfqtDuVFWKWNZkKCBGQFsIea/HU
         PLvtfTLoqb5dvnvu1hOLip5Z4TCwrcvHNpUTGiLG1YnsJJXjVlQUL08CxL4SFN54EeBp
         Atug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UZSUGYFk;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id d1si374176pjo.1.2021.01.14.07.14.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 07:14:49 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-nRrRXO3dMHWblk0o18IUcA-1; Thu, 14 Jan 2021 10:14:44 -0500
X-MC-Unique: nRrRXO3dMHWblk0o18IUcA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 796DA800050;
	Thu, 14 Jan 2021 15:14:41 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A87B219C48;
	Thu, 14 Jan 2021 15:14:38 +0000 (UTC)
Date: Thu, 14 Jan 2021 09:14:36 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Mark Brown <broonie@kernel.org>, Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Fangrui Song <maskray@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Joe Perches <joe@perches.com>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v4] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210114151436.o3d6goua62mjyooo@treble>
References: <20210112115421.GB13086@zn.tnic>
 <20210112194625.4181814-1-ndesaulniers@google.com>
 <20210112210154.GI4646@sirena.org.uk>
 <20210113165923.acvycpcu5tzksbbi@treble>
 <CAKwvOdnAMsYF-v1LAqttBV3e3rHhSFZmPcRRV0+v=+9AyMFgNA@mail.gmail.com>
 <20210114103928.GB12284@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210114103928.GB12284@zn.tnic>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=UZSUGYFk;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Jan 14, 2021 at 11:39:28AM +0100, Borislav Petkov wrote:
> On Wed, Jan 13, 2021 at 09:56:04AM -0800, Nick Desaulniers wrote:
> > Apologies, that was not my intention.  I've sent a follow up in
> > https://lore.kernel.org/lkml/20210113174620.958429-1-ndesaulniers@google.com/T/#u
> > since BP picked up v3 in tip x86/entry:
> > https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=x86/entry&id=bde718b7e154afc99e1956b18a848401ce8e1f8e
> 
> It is the topmost patch so I can rebase...
> 
> Also, I replicated that text into linkage.h and removed the change over
> SYM_CODE_START and I've got the below.
> 
> Further complaints?
> 
> ---
> From: Nick Desaulniers <ndesaulniers@google.com>
> Date: Tue, 12 Jan 2021 11:46:24 -0800
> Subject: [PATCH] x86/entry: Emit a symbol for register restoring thunk
> 
> Arnd found a randconfig that produces the warning:
> 
>   arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
>   offset 0x3e
> 
> when building with LLVM_IAS=1 (Clang's integrated assembler). Josh
> notes:
> 
>   With the LLVM assembler not generating section symbols, objtool has no
>   way to reference this code when it generates ORC unwinder entries,
>   because this code is outside of any ELF function.
> 
>   The limitation now being imposed by objtool is that all code must be
>   contained in an ELF symbol.  And .L symbols don't create such symbols.
> 
>   So basically, you can use an .L symbol *inside* a function or a code
>   segment, you just can't use the .L symbol to contain the code using a
>   SYM_*_START/END annotation pair.
> 
> Fangrui notes that this optimization is helpful for reducing image size
> when compiling with -ffunction-sections and -fdata-sections. I have
> observed on the order of tens of thousands of symbols for the kernel
> images built with those flags.
> 
> A patch has been authored against GNU binutils to match this behavior
> of not generating unused section symbols ([1]), so this will
> also become a problem for users of GNU binutils once they upgrade to 2.36.
> 
> Omit the .L prefix on a label so that the assembler will emit an entry
> into the symbol table for the label, with STB_LOCAL binding. This
> enables objtool to generate proper unwind info here with LLVM_IAS=1 or
> GNU binutils 2.36+.
> 
>  [ bp: Massage commit message. ]

Acked-by: Josh Poimboeuf <jpoimboe@redhat.com>

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114151436.o3d6goua62mjyooo%40treble.
