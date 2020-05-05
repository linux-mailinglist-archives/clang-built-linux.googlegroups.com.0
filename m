Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHHRY72QKGQECTXQQQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0C31C6491
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 01:37:02 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id y4sf135443pgo.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 16:37:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588721821; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+/D77hZ1/uDwLuP8ne4omqGDeJa+JV5AuTYWoxKn7a818E68VL0xnkamCuaRCQG8N
         OHTCEYmc/RGKKoXlGu9gDE7oW0takVNLUwKyyrDWR5F/TznDmyviXaoAUQUTx6nJ6fu8
         +li4KW9xyvx6lMY7BYrgfvnypliLCTf2f5PbVFnKYO1HHCnaRcTdljeGAzMvVaSOGtOj
         +gn8BDLhoQwL9pXfv4hIkU796tgMXolAu6Klpzsv6QTgXZhyyQ+ArHydIQo/H4cr3cAs
         GdOMuma3/CbuHOw7/fyjL/bGOAE1OTzo+CyK5ioJusHWL6UH0VzzqG19JAu9fDo1BLP7
         972Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+Y94Pkk4qIAY7jDljbC4jYxZNDpzjFXygD8A3PkQkDU=;
        b=wehgv3T9p8FVfHdTncALSNxc1RKSt236FNcTHRdnPCCCbPIlcuMfIYD626pIHYZdsR
         ORLwDn/mydeijejdS/o3ceYG7P9aQpXBo3g/gM4SJx0bOP+EGtH/BHvOmadR2Rydp8CS
         xsug4FJ5t2A1rUDsAZGcELHXfZ2/sUYkrENwGxlSN11WrCKgwM8kg2AnfwybbWmc21ID
         EdOYjCaG84K7svnH57+x3a76T4OPmDDAP1q7Wzs+6F4ABQ7XXP1I0MjnorkVhPz1Nf3r
         BWo5pne9NJUqpWYqPULNXoEhYvt9OzPIJwe0aniccJvuNIWytQtxXh4giml3BeQzSaZh
         oMCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ua2Y5pt+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Y94Pkk4qIAY7jDljbC4jYxZNDpzjFXygD8A3PkQkDU=;
        b=rSHJ7lEut7MINByU7dLbxmE1nrSnlcG9DA23nQJumzXcPT93sHEoZgnH/R/lC9hhhP
         k91/48Asc/2kpDGq7mXwD3FfRlUK7X4/9hetogo3FplHoQMIuPub5ZPXYX7qgUjIbhFm
         l1tyPn0BSYCuf94ifLjKyNUN+rggfuUCqebzXiZKzb7MuEL8UAwdS9F56Hh2G9V8O3jB
         3o122XMjcQa3Yn8sQx6aUAQVe9Ewa4QmCw3EsXGJnXAQkzLJdIvCcGwNMJAvN6NSzwTd
         L+woOk6HBbI7ik/cGPRg+O1yNpyZOQ6LE+G52xlykxPlMy4+RAihnOf/UluKR8cNIoq1
         1cPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Y94Pkk4qIAY7jDljbC4jYxZNDpzjFXygD8A3PkQkDU=;
        b=cpABFZBAyXXnViySgBxnMuEOnOiF/GM9AN+9jy1YIScsyDkfzgjz9xr0LKYCdGHmbT
         AL2BJaDQb7p+3HemV8s/8lOKJIHu5Lb7Ip3aBjlXERtOXiZK8zMIPsQqC82dLTeE+tc3
         LBWgcjS8kve/+UouqQU7W5zA4kGb4QgW4Tz3KEFxHoZtC1hyFGxl4xLJi4AKWlDWScRb
         AJfRAAxMzR9sKpgXt+1EBVqbrU1NYfOTJKgR2lXTUtEOGaXIdySOKAV/h+1dvF4SI9OB
         HCxekSSXcE46SMwFkn6wsHhmXOz4gUsebM5m5EbNkUgwo9qH8tOAuqhc6ri/tlxGphNb
         iw/A==
X-Gm-Message-State: AGi0Pua2rJly8b9wRvrb2B7QDpJW/dwN6GGP0tWExd2ASboHiDz++lty
	ezDFPvJh2vX91XQQpJkXg9Q=
X-Google-Smtp-Source: APiQypJm4Z37LHOaiefBvzKq7J9BotuoX8s8jFxZDs4oUwRMdOhart+ljQ93NAceVfX7zBO/lu/63A==
X-Received: by 2002:a62:8741:: with SMTP id i62mr5723747pfe.7.1588721821017;
        Tue, 05 May 2020 16:37:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c5d:: with SMTP id i29ls232235pgn.2.gmail; Tue, 05 May
 2020 16:37:00 -0700 (PDT)
X-Received: by 2002:a62:18c8:: with SMTP id 191mr5582624pfy.255.1588721820577;
        Tue, 05 May 2020 16:37:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588721820; cv=none;
        d=google.com; s=arc-20160816;
        b=UxQBPT383Naf6d1kLXb8wU5gxbpb2cZAr1/eRaBgY0+6AGNptUKOawgvscmXTr57+i
         hPD3HtpTp3hQHKcDLIvIJRQelH5AKGETZHw1A30GnHlzraD0MJC7oxDOd/vCDcg4VDfS
         qTmhT1EC7jxNLA/OwaBstkQgSUYCIQSv91qzIqJ/H3nlHIuIpl7IgkqRdfl/9wxA6Pwu
         +q3WLfcY4F8wImbYBEi085+EN32HXNVUWpVBRMs/W4dnzrj8F9hZ8zqjViuAIaMbFC8y
         YPQGgns5NlmmpH3jmBseW/TcesjaYd/b57hfvmOcz2+m+sIq91007W679czzvW/+zV7K
         cKjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tV8k3SS2CHeSg6+79pVabsils9K32cepGXeLdcOAQJE=;
        b=IeD2GZ7GIh8pzO5sZcYz+0oU//htVUdFx4TkJojFHtYcfJAdiLdl0U77Q7dG92KdEp
         M34MnHmQKiCy3f3qKvgcvBVUvqy17a+ujxBsaz/zga/eYMU1Oq6I/Cz96zOJmEPOniaW
         rkQLeqBt/92ml4VhJe/t6cGB0jXPbC2B0El5PFl7/+rUtMpHaHanDowEkW4P6u6ApNLZ
         ajyIIVLMWzIkTj4EUqrbkvi07wTY0hcnnUPj3/gXsg9v8yqOLHxgaHZdXCbxqhU5cOd3
         JQKnRn/Cd/ytz07huI4eOzVS19//+cbR+QiCKECofng1iihMiHE5NMx/HrjzWQLBthiI
         6mkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ua2Y5pt+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id mm20si564273pjb.3.2020.05.05.16.37.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 16:37:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id ms17so49505pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 16:37:00 -0700 (PDT)
X-Received: by 2002:a17:90a:6488:: with SMTP id h8mr5982493pjj.51.1588721819875;
 Tue, 05 May 2020 16:36:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <20200505215503.691205-1-Jason@zx2c4.com> <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
 <20200505222540.GA230458@ubuntu-s3-xlarge-x86> <CAHmME9qs0iavoBqd_z_7Xibyz7oxY+FRt+sHyy+sBa1wQc66ww@mail.gmail.com>
 <202005051617.F9B32B5526@keescook> <CAHmME9q3zFe4e1xnpptJ27zywGqngZK2K7LCVzDSoG__ht=fNA@mail.gmail.com>
In-Reply-To: <CAHmME9q3zFe4e1xnpptJ27zywGqngZK2K7LCVzDSoG__ht=fNA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 16:36:49 -0700
Message-ID: <CAKwvOdkrS-P_AS1azSCP-DVq_h8Dhb8YiLTfH=9zzEJQphZTcA@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
To: "Jason A. Donenfeld" <Jason@zx2c4.com>, Kees Cook <keescook@chromium.org>, 
	George Burgess <gbiv@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ua2Y5pt+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Tue, May 5, 2020 at 4:22 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Tue, May 5, 2020 at 5:19 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > (Though as was mentioned, it's likely that FORTIFY_SOURCE isn't working
> > _at all_ under Clang, so I may still send a patch to depend on !clang
> > just to avoid surprises until it's fixed, but I haven't had time to
> > chase down a solution yet.)

Not good.  If it's completely broken, turn it off, and we'll prioritize fixing.

> That might be the most coherent thing to do, at least so that people
> don't get some false sense of mitigation.

Do we have a better test for "this is working as intended" or not
other than excessive stack usage, since that doesn't repro for
clang-9?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkrS-P_AS1azSCP-DVq_h8Dhb8YiLTfH%3D9zzEJQphZTcA%40mail.gmail.com.
