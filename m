Return-Path: <clang-built-linux+bncBCVJB37EUYFBBL74472AKGQEN6ZA3WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C98D1AE56F
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 21:06:24 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id x7sf3160210qtv.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 12:06:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587150383; cv=pass;
        d=google.com; s=arc-20160816;
        b=EZqe4ixDHEPhxcrcmxBuzA2uSQheg9Z1qUvIoz2/NOk8M2BGc3NVQfG51runOU4sJk
         3AduIvEMunT0BRqM99HklPcr/eLNpJ0W3S6Q33A4Av/7ttBh3fF/x8rfikPxcog2ziR9
         g+NaG5yreoU1UK5dxyRUl3HaCx+wg8qc8w8gcfjaO01RJcYa40D5EAH2DYPxGDcUCWfE
         Lcgz1o79alDOgTVDXmX2wSzOylMoJtG0wRRVMzQWEzMR8Bvxmimuyg3Q4Z/Gu9HGXGY4
         xVwxzsdh53qXkKiyz6wHPGQax6LtBYCCgj7Ug6s0DMq7gefn0DeA6btgISccytVZ6Bpx
         Mdgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=GHFAkPEs/DN07V5Jd3H4kKjsKTmNc7kWH+1OUovZgSo=;
        b=EmAaaxfe6sgDnAbgqYTmRYXtlJDERYc6UgLrNHNjkNIqMuPzqu9BdUg4mfFPBwavGZ
         DtMSdUtAGE9U4yick53QZmppSdU4myrIqOOq2K5PfYgWfDVokWH0PyXDeXsOiFnJIUlY
         On+aCJl2iubj4IfeMRPkDiVY0fVlKSesGx2Bkcvko+vvJW60yW1SK0buLfvQGGaQAZbi
         yOmGHiYcu3I3UTq3WMcFwfM52B+Mg3eFt06s94Mk/UH4jkC5/Yi4ezglQ8ehDzZNlc7/
         wFdOP4d0tEQm8oHDl39G+gvQTAFZ1aCQbk36IZ72fSGMciNhk1ooBpxdLFHvcpha4M8w
         hABw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AhxeHMIZ;
       spf=pass (google.com: domain of jakub@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GHFAkPEs/DN07V5Jd3H4kKjsKTmNc7kWH+1OUovZgSo=;
        b=PVNIQM67AbV0EJUEbfNeVQGg+FagbLNawkD2zF2NnLCRhzONx92/gRJS9u2ORaLCaD
         iRuaCRYt1YrCp9NpzvlUnMWgUHnu/ZJgtnx2u6JDAODt8gDlEBu6wF+zeIliRO/s2nTI
         hWuwHFb6U3v2mGkm1qBktvXePScServ9xVdnuNN3yhTxxh7hHysRvsamwnUHhh1uR4Rx
         a0wnxAGvcSgrT3Jb6n+elrxSd9JgDNNzJBJwwY3jUTKh0imyGgTcmWx07DGgCPjYcGhS
         VkVAc73J8N4nGbn5qP+vsxoCtFlzqKvroWQCo3mMTHHUZfDe2uJlmYslkZGiax3UGQJH
         IkIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GHFAkPEs/DN07V5Jd3H4kKjsKTmNc7kWH+1OUovZgSo=;
        b=Hb1kKgUpmJ7WW3JeW0zvvL9u9HpHRZYfTE79Hj30QyFgizpzQtek+BDwqvZXr70pix
         eYMbl4qMJmOXG/HHjfX5vK5CQ9DeHLdszYAv56eeBTqrb8O1fXgMl6hVVYBZ1wP7SqkA
         dS72uQKiT7bmazQEr5FwrZ0JozQ4IyID4+IUk9auJWiNyHLhwLT0bIIrFEmdJrtXFShT
         ifTwtFv3qUa2YkVOIrTIabOFvtgK8cCAZaHPfwOyrfnYJnicwtLBZdwsictvZWVGLDwj
         Qc6VJZydgDhKyPfZILe7IwEOv8ZxuAlkcJJzZKxrmmiNm0BOh2w/3AAvzX8+3LFufO35
         8jpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaqDUO5X1EBGelh+wBH33NavdW1lNqf7f/txZUoh7RYsOZ6pjqk
	hh+CGLn6+fuLMJ/H+wPxwX8=
X-Google-Smtp-Source: APiQypK9YtlmI8WYT0eflzEkPz+kdb8NZcYYMMBBCX/p11gxj4ISuySJg7pGb39WOsK62eOTiiWKbA==
X-Received: by 2002:ac8:3254:: with SMTP id y20mr4581606qta.67.1587150383408;
        Fri, 17 Apr 2020 12:06:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b946:: with SMTP id j67ls1765960qkf.2.gmail; Fri, 17 Apr
 2020 12:06:23 -0700 (PDT)
X-Received: by 2002:a37:9e08:: with SMTP id h8mr4884872qke.369.1587150382970;
        Fri, 17 Apr 2020 12:06:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587150382; cv=none;
        d=google.com; s=arc-20160816;
        b=MZ3ZARQwts9a3LEaSxp/9mIGV8pv5qC4pXaS624eWVnZUMtEoFp0Th05QxUo9gdMNu
         SlYYC59kS1sxGTC7ay1GiD5rqw5VBKno3gsJawlFj8T7hi+Ui36Qofn1ITQqu4dLXpHP
         v+fsB+FRrvJhnncXD0knVRA5wQIIjZU8xpl1ge+s0Afthdi/qRIMUy6XZeSSwpXUAUy1
         Fy5IdWn/dxHEzZuu/IFtXZbMZfk+IC6hdRtGubuw3w6zxObHwl/rRzRNcpRybs4noxJ3
         2OOLol4r3lpe5YmveQQPUTN87rK4grMLYTAq2egqt3PB0X4+DnAbi+fgLVGp/U1HGiuy
         GXsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=l7NhxqPBgZKRGKonQi6tXhellcY9V1W8AoTLk+/o7jk=;
        b=aqkiFjHuB6kQPyTeZU6GTaNadMh1r85YxK/PpOaTK7tKOJweOEdUdYVuAKxEKQCqYo
         twfjBkLSUKltf89qwq8FAlqLQ5g2AxlZCtstxahVx+JlukXcVmPZR7mAvHHYtX8r7QqF
         8HWpJXw3Gp0URmJfN4PiGOz4tARhGGwpkRe3d+mtGbY9rqtxj3udBDJtHKTohPXIwtHh
         yl1c/IAjSh9sbWM449VbppQNtCxFcCtss/GQ2RdthL9GuQXD4PYeoYFrgUKj0e8m1RPm
         0sqoXbyIrCVDp6goEgtbHUWbuAbOu/MVZMPhmzaci2Zh9062rAUHdd1YWyuO16REN18/
         ITiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AhxeHMIZ;
       spf=pass (google.com: domain of jakub@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id p9si886772qtn.1.2020.04.17.12.06.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Apr 2020 12:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-68-ETcNWG3XNDSFn1nDcYYgJg-1; Fri, 17 Apr 2020 15:06:20 -0400
X-MC-Unique: ETcNWG3XNDSFn1nDcYYgJg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E5842107ACC7;
	Fri, 17 Apr 2020 19:06:18 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-112-104.ams2.redhat.com [10.36.112.104])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C485D7664;
	Fri, 17 Apr 2020 19:06:17 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.15.2/8.15.2) with ESMTP id 03HJ6EnA028978;
	Fri, 17 Apr 2020 21:06:14 +0200
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.15.2/8.15.2/Submit) id 03HJ6785028977;
	Fri, 17 Apr 2020 21:06:07 +0200
Date: Fri, 17 Apr 2020 21:06:07 +0200
From: Jakub Jelinek <jakub@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Sergei Trofimovich <slyfox@gentoo.org>,
        Michael Matz <matz@suse.de>, LKML <linux-kernel@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
Message-ID: <20200417190607.GY2424@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20200415074842.GA31016@zn.tnic>
 <alpine.LSU.2.21.2004151445520.11688@wotan.suse.de>
 <20200415231930.19755bc7@sf>
 <20200417075739.GA7322@zn.tnic>
 <20200417080726.GS2424@tucnak>
 <20200417084224.GB7322@zn.tnic>
 <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AhxeHMIZ;
       spf=pass (google.com: domain of jakub@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=jakub@redhat.com;
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

On Fri, Apr 17, 2020 at 11:22:25AM -0700, Nick Desaulniers wrote:
> > Sorry, I don't quite follow.  The idea is that an empty asm statement
> > in foo() should prevent foo() from being inlined into bar()?
> 
> s/inlined/tail called/

Yeah.  The thing is, the caller changes the stack protector guard base
value, so at the start of the function it saves a different value then
it compares at the end.  But, the function that it calls at the end
actually doesn't return, so this isn't a problem.
If it is tail called though, the stack protector guard checking is done
before the tail call and it crashes.
If the called function is marked with noreturn attribute or _Noreturn,
at least GCC will also not tail call it and all is fine, but not sure
what LLVM does in that case.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200417190607.GY2424%40tucnak.
