Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBWG2VX2AKGQETBW2WZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A2619FC1B
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 19:56:42 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id f14sf246164pfk.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 10:56:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586195801; cv=pass;
        d=google.com; s=arc-20160816;
        b=zxwfD9D8u1fyh4rQ1jtxN/Grt3Ec/ysBdxEPyuWW4thHJuicfcGkrwBzlQj4JRctet
         RwbNjIje8DwlYmN7EHdNGZ0a4b5MzeTh8HsBDLpvBbmFGcJrwEuLvunQ6TvfbtFbDR8L
         p1Iie40tXduy1DoV6EPl/H1W1KOdQ5rwldMRDzzimqoEcXE+qwG534rMAz1bsMRyP8xm
         se2gF13cPEHKbP1AzbBvhNSxkOeORAAr4OQZkeoJWT+QDnXyWb2b1Pc3nfl+KsUEtMXm
         oBzd0Iiw98MYp5RYLzCBF5AANE3T011w2Rkj/ezsALkwrjpbDKAzdQTgeSeIU8lg6Nvv
         8lMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xjyObV74W6CZBnDnOqYeD/6/Y/KGZqgrLbtMD54W8ok=;
        b=DFx5/UsuHdfpDFol5rS6z/oSTVafJc4rm7kUIcr+zkG4sleWEuevQZ62q/t5lgV2x1
         pjSJ6eSygMY2CvAGicHCk35zAj0ZntQ6mUMWRBetaf9tveoIk+AatE1edthjdqLoyNn3
         hNPf7uYipoAjrfOlpCP2sbucFM9I+3vTTKy7wIYxnsx5EUyrsy4AeGVyrrMtCFk8tOxJ
         qSw5cpkOgeQ6Km6HbuEec+kPmF7Bc09gwf2M934NOPitf+s7W1dCIDhIopWHgpVI8Hwr
         0UAk0ntfhZGCtL9VzZpYBpDgDIjGjtj83ui7SUxFSfD7FHF9cKevsfTbxC8tDWFKBFje
         0kcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZPgUFspX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xjyObV74W6CZBnDnOqYeD/6/Y/KGZqgrLbtMD54W8ok=;
        b=im3Qd76F0MhEBg4iZXzNwTVF90tVqKSRVbSHHADTnE1J1WPA/aArpuE6gYudaVGVw1
         Jf2vxJZkQdPyVKUOFoHm4RWy5a0I+AR+nEYqiEJ6T1wW0BacxIsKlqN4zacMPMRCHjV7
         r2QyzuZJ+k2SfeoogLb/G4iFOJRlrU/hc/KxGgwZaS8yRaaXQx4R6AgFWFcymxl2QlDw
         XiRDrmW0yeTZnW0V5HMfUI4a/EsjuaU23ehWtOmCMN9oupBNlkU8RyKk1U60i0MVXUwD
         cDsmW32X8SakM9WgPbSNP4XyPQBtvoAEMBACqJnw18jHq0NPh2ZYnYg8PeX2b8pNF7/k
         YkAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xjyObV74W6CZBnDnOqYeD/6/Y/KGZqgrLbtMD54W8ok=;
        b=dFe+D3v0RyZRzRY1JuV2D30KRZoN35JJDZrGTlIV+gvevuyGqdixegwuTuhAr+vhUa
         3aBNPY0Lbi9E9slPvbFFla3vFhqRGCocCRIsomNWe4x4aj6Zk7hE5dyspTudUf0fF+n6
         +PGMd/zeWyvJlHgZtg1LM3n7Ls1lmSW+S2qAIWVH1zupBSw10u9liogGRJmHOiMnZ3Ms
         bw0WW/Mnwk+GZPaP3wA3V7KpYRLpmiklUQkOfZgCmqlE6gqQOr9m9GVXkOnpbf6yumt6
         nBrX/dA0NS3w/GMgStTnu80DVYEkPxgoQDM9vh2nWsBuhE1bQqozJ0VgckX7QtE4pzjk
         xuXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYk+kjh0ktqSMh+LegOMxM+kGO5RvRNtrpUiC6iFBxJLPSLLE96
	Z4xrr0hMd7pUxu1jUgElSAs=
X-Google-Smtp-Source: APiQypKkit+FGab5kmzKxhSctxCvCjHgKg4nqZ/jP+GQ3/oSt3muUIMRuHKTSAO8XQhe4QHHEEgNrQ==
X-Received: by 2002:a63:a746:: with SMTP id w6mr320153pgo.76.1586195800692;
        Mon, 06 Apr 2020 10:56:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd4b:: with SMTP id b11ls215418plx.4.gmail; Mon, 06
 Apr 2020 10:56:40 -0700 (PDT)
X-Received: by 2002:a17:902:8ec8:: with SMTP id x8mr21195226plo.204.1586195800184;
        Mon, 06 Apr 2020 10:56:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586195800; cv=none;
        d=google.com; s=arc-20160816;
        b=wip25j0Py8eXeIxOh2at7uQdavtJQtZtTIJ74K4w9kwQUkcsicgbJCOXoc7rz4byAD
         00QKYCukrzqnsv8q+fMXnHjxVLZMJbrgI/QzKZ6lXmNZUzo0l4WOUfQu3D8PHMn25h3y
         xvw2EpRPy4u9GmRcQLkyyXgT446CaLwduwrwkbJWBobQFI56YYH7SkcDgif+yd/WO11V
         XgxNtsBo5KYMPTNFj+6Xy/AyZQsE0zjA6Dt2ZFMeouUcbj80eXL6+ioaK+MPXEpMZ7mH
         kLzY7WhfnacIkSofWwYsUKozzNf15nYps0RmEKFAPv6sNTootd0OAZOfg/s0D1kg+77i
         MSYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VTSLvGW8RhQkzu3DTehusn7i1I2gPEJXbmyJOUqwh6A=;
        b=p7F+9514C4c790NhUw6bpYMZOtISYf6mYe4JIbsjESYtpU2Jmr0JXq154H7e8PZx1E
         fybUJ7u+w++sFn4nBm0lSUMk55uNDkR761sYse9FtQDGqoMEkoFC91CGxX6d0nahYrwk
         spaWmKdgUUxGSpaA93RzW5nv47YLzoK/a57tlK2trVvboPmR5i252mmLMoBC0xoCJZQX
         3p06rpLuwVu1OCk4UvVfkfuVBlRRJ9gddTZzLEEtd6TNkkTv+q7gPKs6VRllD9WhREUw
         2oLSMN3+04wN2oWD2yQ/21tRB+PtCNVVENWHhaO+l7Qcf52wNUH8Sq2Zxxn1o8gKSU2H
         m0DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZPgUFspX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w18si70050pfi.4.2020.04.06.10.56.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:56:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6C83120719;
	Mon,  6 Apr 2020 17:56:39 +0000 (UTC)
Date: Mon, 6 Apr 2020 19:56:35 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>, k.opasiak@samsung.com,
	Felipe Balbi <felipe.balbi@linux.intel.com>, kopasiak90@gmail.com,
	Sasha Levin <sashal@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.4.y 9959/9999]
 drivers/usb/gadget/function/f_uac2.c:601:40: warning: variable
 'devqual_desc' is not needed and will not be emitted
Message-ID: <20200406175635.GA167424@kroah.com>
References: <202004050547.XbHnZtwa%lkp@intel.com>
 <20200404213110.GA34553@ubuntu-m2-xlarge-x86>
 <CAKwvOdnPOVfi35Vrxr1+FsPN+V2X5UiwxTdOu+pdwsBAGXxb5g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnPOVfi35Vrxr1+FsPN+V2X5UiwxTdOu+pdwsBAGXxb5g@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZPgUFspX;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Mon, Apr 06, 2020 at 10:37:20AM -0700, Nick Desaulniers wrote:
> On Sat, Apr 4, 2020 at 2:31 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Sun, Apr 05, 2020 at 05:23:53AM +0800, kbuild test robot wrote:
> > > Hi Dirk,
> > >
> > > First bad commit (maybe != root cause):
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.4.y
> > > head:   1d2188f191be66572f9e20c9486eda0544ab750f
> > > commit: ce513359d8507123e63f34b56e67ad558074be22 [9959/9999] scripts/dtc: Remove redundant YYLOC global declaration
> > > config: x86_64-allmodconfig (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 62f3a9650a9f289a07a5f480764fb655178c2334)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout ce513359d8507123e63f34b56e67ad558074be22
> > >         # save the attached .config to linux build tree
> > >         COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/usb/gadget/function/f_uac2.c:601:40: warning: variable 'devqual_desc' is not needed and will not be emitted [-Wunneeded-internal-declaration]
> > >    static struct usb_qualifier_descriptor devqual_desc = {
> > >                                           ^
> > >    1 warning generated.
> > > --
> > > >> drivers/usb/gadget/function/f_printer.c:164:40: warning: variable 'dev_qualifier' is not needed and will not be emitted [-Wunneeded-internal-declaration]
> > >    static struct usb_qualifier_descriptor dev_qualifier = {
> > >                                           ^
> > >    1 warning generated.
> > >
> >
> > Not caused by that patch.
> >
> > Fixed in mainline:
> 
> Hmm...no fixes tag, probably should still be backported to stable.
> 
> >
> > https://git.kernel.org/linus/d4529f9be1d72919f75f76f31773c4e98d03ce6b
> > https://git.kernel.org/linus/e5a89162161d498170e7e39e6cfd2f71458c2b00

Fine, now done...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406175635.GA167424%40kroah.com.
