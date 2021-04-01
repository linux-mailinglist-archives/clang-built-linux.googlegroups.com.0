Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOW6SWBQMGQEZI2GW6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 317C3350FA8
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 08:59:08 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id x7sf2519138plg.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:59:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617260346; cv=pass;
        d=google.com; s=arc-20160816;
        b=tYO8R6XY/jYIhfJEYUamnn14Eiwg0pWAkkldgqdcxFqIAezm0MXIP9LDeHYdfOL5wc
         ij8vpqSX1fWBVH4T/K305eqeH7ltcnWbLEHPMtfw1jgI4DGpXGtlEdvUIi7Lxq+n55Fr
         fN9JFJF4Il39ZXf0w/6udqsz0ErnmtkrQjKCIaGj7X6FbFSxw8TTeaJVaUk8njzx/xf7
         0OCrN2Dh7WybOSB2TrtN6gu1nSm5r89giKmK0p4jVXw7SCL3d+EADmLYkWDUDblhqT9I
         n/F8LEcFnZHrT0eG0cT95MfEi313TG7E35JFOZakmcR672npwrKNDemHo8SfXSQ5AbjJ
         RwIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ChNs36OArBgtMd8QUkw85GWWJKqLmSRgI5DRgC7Cc54=;
        b=pSXW7Ux4gHfMnTAF3TOQ80p8aRB9XQAFPC94vYt95P0MQfY8L6h1RdxgZ9rWFAZB2l
         T4EUnTDyId6Mf/nRt1oXB076GGAQqDsaxHGS4ywRXWraqmnjFkn+FvswjqbukXxbGVjL
         048g+RkzA1plILon/OGNYKb9DzCEIrPjlFf9sFUDXhhARO2ehUIAbUsrjMRzp3aVKv/0
         JyibHhgtiKH0juf2Xp2lMSnYbV5dwigB5A/Vj04dmnmQ/s8yzNRjiAE+F2R5+HGsvQJd
         3C9skbKcicp8/MZICQg17BmzQqVnCE9XRLs6Y9mS2SZS2Qp8Ig9tDN7re+aMLuQkT6vs
         ojbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JIn3UmAu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ChNs36OArBgtMd8QUkw85GWWJKqLmSRgI5DRgC7Cc54=;
        b=Xwgzq30iaBrh8fjISEG2XE+vubJriAZ7JOBkz+m7IMsZgRhAy3xbz+Z5ZaCUeVA57B
         cJe0Ag7RUbcwOmdYE41eyGTRDGEn4zdfZWWJAlhqu01bX7PptbC14qJDNiUm7clLu3DP
         FKoWvbnhSohXfSI7hvzo1wWtpos9m6IGbwI6uOlDCooOYopFRoj7Yp20bmwmsQG+0tnF
         bul6TVaRKiScArwOg6XIrGyKE/ilIBVRWO/vcnA5WF8lkRvgwDlp75ugTc2CjMQuyJmK
         t3k6Ur/z6v+7W5Za9+J8cjSfmjgIMoN9frtPuWRkXM6IQYH1sLbC4HTORHbeWothbUs3
         bc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ChNs36OArBgtMd8QUkw85GWWJKqLmSRgI5DRgC7Cc54=;
        b=Z2N3GOuDXp5mM3M+uzn8Q0bNP753KYjF0ah+h33GbMbtC3kT41hBifZaMVYFvEcv4D
         WeVFE1LZdpTVExUGmAGX+/693n+wMhYPMyeODD3nE2y+wTJC4GS+LjvTIVXoBDjOPtnQ
         ckkAvdpxa+v7d2L4lE2xP4QiZ5PhLpEb+PEselO5dC6HpVW2SnQdMjBLM72DSIrO/MLs
         08+DmzNFjjaU5VDMzPO6N6CIAhBKFJyiSMfcyNfABEmf+8t3tSpQmLbYbO2bSTfwV3ZA
         LA/NUIzKjG3jisH4YAVC9DFp+LB3jW6sG5/9PwljFXor1W+wsBiUcO8buC1tDRtOV+Mn
         ffgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nu4n+YMcKze4EKEsdbLc1j82oGTqvzHbCvy8FtCTaOo0toMEU
	8dx1/1cLsYCD3EzJT//3Pvg=
X-Google-Smtp-Source: ABdhPJwxvKhsiD4oN+IzQ/5T83098ooAfNM24JgE0xJk2rb1AlSCY/aYvFVfBz4BXO9+QICzfW0Faw==
X-Received: by 2002:a17:90a:a4cb:: with SMTP id l11mr7312229pjw.144.1617260346382;
        Wed, 31 Mar 2021 23:59:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5ac8:: with SMTP id d8ls1849923pgt.6.gmail; Wed, 31 Mar
 2021 23:59:05 -0700 (PDT)
X-Received: by 2002:a63:d70f:: with SMTP id d15mr6390729pgg.397.1617260345875;
        Wed, 31 Mar 2021 23:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617260345; cv=none;
        d=google.com; s=arc-20160816;
        b=SXLrkjDSFFltw/F9tvEDdt/RIJBSRfssn1pZKYKYh9f1+84x34Um4p4KfOUqU++Fao
         VlMmlCWbjQWvUm8nlr2IUlW4aal0V7/2UWrcOdYSz80vYCHsi+b8wxI/XtS0Edv4hMj2
         IUdktiv/kiY5TKSZqmnLJFhudmnv25nQ8W6bfypUAgn3JTuhUTMzCw4Jd04gOE0pUyBg
         ZVqlxQEFqu92nHulhWLgphvt+f72JhFvW4QO5fmsOcWd3rS95B8+4YscHh3GV3wPQ+VH
         py5kbDnUvrydT0TOJkUlhJNQ7apnw2gyi7g6fBjEONbxIhQOl/suNerOE/PQVyJ9yBOs
         /UMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fcskQaTmFb+0fkW2jo5lLy1NvjqxJI8ndRFO1CrEEC8=;
        b=jpaZlQbtlGoo8Gs821S8PhxrewFP2VVITP+NHX1zSGIJbV9MOeNs5GbxRZM0xPcgka
         5B5x75fxgCShWEP3cKycM2bQRElNXaOkX549PhGjOki02HdWOpMmgvOriiBrsDunf57X
         0+lpvZ+Yf7dK5cqDSDgs+qAp2wyd1/TP+7/G+PwkAR8SS+VGuvb0WaxXSqZbevPg2soQ
         urWWjyKuwDj7tOym+6sa085uSZ2u1VfhEbLrdYRntTSxkzE/SFq+nIg77NKAQwYgzm2L
         LfUBXhQWa82MOqgYGPBGsLy4ZlcyAbYs6MqTcKKJdCA3H10O3BMp5HU6iMOfNM6SbO4l
         8mZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JIn3UmAu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id nl15si258050pjb.2.2021.03.31.23.59.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 23:59:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id x126so718174pfc.13
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 23:59:05 -0700 (PDT)
X-Received: by 2002:a63:6683:: with SMTP id a125mr6149517pgc.382.1617260345487;
        Wed, 31 Mar 2021 23:59:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f2sm3961559pfe.177.2021.03.31.23.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 23:59:04 -0700 (PDT)
Date: Wed, 31 Mar 2021 23:59:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Michal Hocko <mhocko@suse.com>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Adam Nichols <adam@grimm-co.com>
Subject: Re: [PATCH v3] sysfs: Unconditionally use vmalloc for buffer
Message-ID: <202103312354.A15E2A808@keescook>
References: <20210401022145.2019422-1-keescook@chromium.org>
 <202104011400.HiuLgSvb-lkp@intel.com>
 <20210401064753.6ub6dhcuu6zuhdjq@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401064753.6ub6dhcuu6zuhdjq@archlinux-ax161>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JIn3UmAu;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Mar 31, 2021 at 11:47:53PM -0700, Nathan Chancellor wrote:
> On Thu, Apr 01, 2021 at 02:41:37PM +0800, kernel test robot wrote:
> > Hi Kees,
> > 
> > I love your patch! Perhaps something to improve:
> > 
> > [auto build test WARNING on driver-core/driver-core-testing]
> > [also build test WARNING on kees/for-next/pstore v5.12-rc5 next-20210331]
> > [cannot apply to hnaz-linux-mm/master]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Kees-Cook/sysfs-Unconditionally-use-vmalloc-for-buffer/20210401-102455
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git d225ef6fda7ce9ff7d28764bd1cceea2d0215e8b
> > config: powerpc-randconfig-r001-20210401 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 1c268a8ff4e90a85d0e634350b1104080614cf2b)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc cross compiling tool for clang build
> >         # apt-get install binutils-powerpc-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/c80ca56c15314908ebc1881678da3b36e007a2f4
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Kees-Cook/sysfs-Unconditionally-use-vmalloc-for-buffer/20210401-102455
> >         git checkout c80ca56c15314908ebc1881678da3b36e007a2f4
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> fs/sysfs/file.c:52:14: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            return NULL + !*ppos;
> >                   ~~~~ ^
> >    1 warning generated.
> > 
> 
> Arnd addressed other warnings of this nature in this patch:
> 
> https://lore.kernel.org/r/20201028151202.3074398-1-arnd@kernel.org/

Ah! Yeah, I copied exactly that clever idiom that Arnd fixed. :)

> which it seems never got picked up :(

Greg, are you able to pick this up too? (Yeow, sent in October!)
(Or I could respin and send them as a series?)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103312354.A15E2A808%40keescook.
