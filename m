Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBCUOSL3AKGQE2UCTC3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEE91DA725
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 03:25:31 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id a13sf1324455ila.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 18:25:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589937930; cv=pass;
        d=google.com; s=arc-20160816;
        b=ULqb8oHZBvXfb8dR5Vdn/AsQTBCtl2ZBOx2lJKrItzjjqoFE9BXfz5QgTb3fdvYZ3+
         zZAUvPaTN6DVzYjNMw1QyXYNpbeDBTZP/pY0piyygaofYMASfK7QRUj2NWSjGc2xRygY
         cI7OMM2+zp8psIuEUZEAD3QEFthbzcBSvpgMmJ7hjv+SeHnoJzDDVOzgEXb0jQ+UZWpZ
         HAaYFKX0faQSbHWECo5xSiFHbFiX/aPkLsohKprOAVSqmm6ldz7vyMj+JE/ng5vOD2ss
         97XLm9H9gH8KAa8HpGkrHi5/r0ZdAGDlOUJadyX4GcfT4THz4/io3pvUmSnobLb0jtWH
         6wTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=pUrXp1ZbGBOsmlOVWHoEcVpwtqvkdYuUKboxKAAHRV8=;
        b=fcFC1QcCdpZLXAOhsWRNuaxgReDHySz9CDAY5jWq5U2qBVZn62YymeaH+36OAhTshy
         RmVASF+JCSX38aRcOn/VWcMxrdGtGVG4D+xikZrvvMVVOmSMhkLA/8uSYgJ7fsvs8TIh
         CUs4mvux5kwMMlc6LG4QfZd/qAbpXcLgLIpHNyUovqlz9crX34QruFbbnmh42kkz5Jt3
         jmWG+8MbRILKWAbZC+7P1BQoCj9vov6WRmSsuLstPlMxLu1xSsNlZWiVEvUIQm2AXfc7
         iG2rj9GWBbFF0WpF0TvzVBvIVriOSS0aG1gUaJGeE/yRyngK7iqYOcs4Gvw6qBHkOm0i
         8JDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pUrXp1ZbGBOsmlOVWHoEcVpwtqvkdYuUKboxKAAHRV8=;
        b=JxrQRAyO54GBoprdnfCEbUhuwbzHzHWmXgGeXYDrzy5IP0ANhEQXSRAJEs4EKJt1ad
         x3JSN5OOiT/wTfa8bGSIiF1AZxbFAcq4cxdAvPAm/HpLnV9NLUZgbWn7obp60DB2FUpN
         s/PJJRE8sXxV3haRevNzG02L1J700bBD2hk69+um83/VCiJbTTa+vgpS8DOD1hjB/swR
         qA4US4jlVMvRj+jZAbCXNWU0wZWKycTHb1ppcvNlkDbbs2MQQCqU3xRbZ3reUp3G/rh2
         2EL7D80kcWbpT5jHXxdrfj00EZxAJkO9WNUj9xN5HxyRVjp4zE7jDY4E0lmvLcYVrcjC
         a7BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pUrXp1ZbGBOsmlOVWHoEcVpwtqvkdYuUKboxKAAHRV8=;
        b=NRhsYvCHzup/8tMpUi/yg1oX17uLBu3wWfUReP0yNX5oAcwcfouycm4w8gbBxiHFK+
         K27VU+lZXTK/5mPUS9h/OIbpd06ely7w0lbI2tH+DAkW4KBFl7bDG/VzFnBMgt8bH9SD
         NksH1YXNYs+OyibjN18aRku+TEthQHJOWTBQN+49yC0NbToZg+B8/6nVsNSUBfuOJNoi
         bZat2XqI2S/rCb2klDg6MrAGiH8tK9tF1T5kI1nQE5DQhTpiGpOpzuP1vwR+sKl9523c
         WN9hk7IQmG80yW06LEy+1d7owKCerrO1bSLYkZQWgrhX7aF0oPokNxikpEsaCndWEN7d
         GTaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OcFBgK4VQFI8BYFGak4/DUPEOlVanZx7AyqQ4DuQHX8V6Bqyt
	cbG+KCPWmcSXxhU4M8owbyQ=
X-Google-Smtp-Source: ABdhPJylNPoRm5XEMieNou0f1bHke7byCGzOfatP/k+S1Qmko4bNvpaP3CdRVQT6zokq/Jsd1gR2/A==
X-Received: by 2002:a5d:938a:: with SMTP id c10mr1577877iol.157.1589937930477;
        Tue, 19 May 2020 18:25:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da05:: with SMTP id z5ls316495ilm.10.gmail; Tue, 19 May
 2020 18:25:30 -0700 (PDT)
X-Received: by 2002:a92:1dd7:: with SMTP id g84mr1904945ile.231.1589937930054;
        Tue, 19 May 2020 18:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589937930; cv=none;
        d=google.com; s=arc-20160816;
        b=iK4H8qwuv4QPDj9ovm0LnhEy7J2002Pqnv8f4CqCcmcVLrs9tc5aw8C20LESW0+b8i
         SeX5JbG1l2aRP6vUblxKTV3JjSumuG4HDy6lzvlY9Ncs0WkhWqMtlSRkhu0CUTDyInnc
         orjXuZkLTc5sQKdMVea1bY2X3s0u86OacMIXc77MlD16//3+rvO9kHtMDqlONhk2sp5g
         QuyPjncW1nNdQVcsUarC1OuOnT/AFyvDgKXn707zgmkFS3FH1ULuSjcDeh3tS91iFc99
         lqEiyTdLVszvSZp/OfSdj5Q6sySNwpgEsOwcl/Sfr8c1uUXyEfbB8H7e7xrbZJdW9wlv
         1cdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=1JUT6oYKxicd1q6w0CcpqFOBvuxbmJH+IGsB+46gkk0=;
        b=L8GpMO38Vmf85LjGFvkEk1ufdHrgIQtnB+KyiJoROkSgz7fSW0Dxgnt3r3U4tTlcjU
         dvOLOfTLsAa7t6W9+KbRQuZIXoXRvMUegK7toTlwKvKf/DiCUO+vD1XA57TPHB99wt3n
         LbKGxM3J3KZlD0/25M2BF6wza35Ao8721JW/TL6sj7wEaF2ahJbiP3qlUxtzInbGQ9W7
         P5s6lrHvpyzkbhM8KB0nRwAEek5HhYCEjVJnLGhyXHp9SKWApg3/T5VXzXIDR8+h0y1x
         lROjEx53os2FsfTaddSK+H5ZQNlFSWHmxEel3QrU6lA2LT7M1BxKqNNfulvfPKdc6AC+
         ajJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id n16si121278iog.4.2020.05.19.18.25.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 May 2020 18:25:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: Fnxw400rUeYb0Sk0Mh5ucDnulpPH3NteMm5YvRlm0VL+w8l0izt7Mfz0owkMmqI3i1VJZzD8Mv
 dD7cNWHPer3g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 May 2020 18:25:29 -0700
IronPort-SDR: MDx3VP1Ag3njQZh53RjtNhipvr8a/FY2Meq9Bv17SiqNpQJAh3/K1jVEYEsAkqeGXFuYpc7kJ1
 hu9Mz+vnpMcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,412,1583222400"; 
   d="scan'208";a="466194708"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 19 May 2020 18:25:26 -0700
Date: Wed, 20 May 2020 09:24:04 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Borislav Petkov <bp@alien8.de>,
	lkp <lkp@intel.com>, Christoph Hellwig <hch@lst.de>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Benjamin Thiel <b.thiel@posteo.de>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previous
 prototype for function 'x86_has_pat_wp'
Message-ID: <20200520012404.GA3992@intel.com>
References: <202005200123.gFjGzJEH%lkp@intel.com>
 <20200519205505.GD444@zn.tnic>
 <20200519212541.GA3580016@ubuntu-s3-xlarge-x86>
 <CAKwvOdk+JwddxLaXc9S7SMMTye8bDaGEckcs7zu5tEMD0G3Yog@mail.gmail.com>
 <831EE4E5E37DCC428EB295A351E6624952648ACF@shsmsx102.ccr.corp.intel.com>
 <CAKwvOdmoA5ZFCiUQ5fVf7+970Y4bxvU=kYWb49NENQzxdm7F1Q@mail.gmail.com>
 <20200520005218.GA3101@intel.com>
 <CAKwvOdkPW2p-4fDUNT6so3DrxiJgtUNEFPJcHNf7VROozc4wjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkPW2p-4fDUNT6so3DrxiJgtUNEFPJcHNf7VROozc4wjQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Tue, May 19, 2020 at 06:07:14PM -0700, Nick Desaulniers wrote:
> On Tue, May 19, 2020 at 5:53 PM Philip Li <philip.li@intel.com> wrote:
> >
> > On Tue, May 19, 2020 at 05:26:18PM -0700, Nick Desaulniers wrote:
> > > I think having in the top of the warning that this is a W=1 build will
> > > make it more obvious.
> > >
> > > I get that -Wmissing-prototypes can be noisy, but it's trivial to fix.
> > > I do worry what other warnings lurk in W=1 though...
> > with some monitoring, so far, issue like unused-but-set-variable is quite
> > helpful. We will keep monitor for other issues and feedbacks.
> 
> Hey, I'm always happy to see more warnings turned on.  In our
> experience, we had to get a sense of how many instances of a newly
> enabled warning there are, and estimate how much time it would take to
> fix them all.  It's further complicated by the fix going into
> different maintainers' trees and reaching mainline at different points
> in time, while regressions continue to sneak in until the warning is
> enabled.
thanks and agree all the thinking here. For the 0-day ci side, we will
be very careful, since the mechanism for us is to notify newly introduced
problems from developer's patch, this can allow relatively min effort
to solve the new problems.

The other consideration is we test a lot of developer's tree and mailing
list before they are upstream, we also hope such shift left testing can
expose these warnings in new patches before maintainer's trees. Of course,
there're extra reports due to W=1 against stable or mainline, while the
number is small comparing to developer and mailing list part.

> 
> It may be time to consider "promoting" some warnings from W=1 to be on
> by default.  But that takes careful manual review and estimation of
> the work involved.  Turning on W=1 may be blasting people with a lot
> of new warnings, but if developers treat them with the same respect as
> the default enabled ones for Kbuild then I'm not complaining.
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520012404.GA3992%40intel.com.
