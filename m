Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBF4T33VQKGQEORGV2LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id C7300AE92D
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 13:31:36 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id 13sf2557176uag.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 04:31:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568115095; cv=pass;
        d=google.com; s=arc-20160816;
        b=NLiv/QUQPOZWObe85bbhf6+TGUrXAArDGqB6fIzHuMLM7TB5uuUEdh2dYTortgnO7x
         ZZTvfbN9wgHdwHXBHBiOiD0O9G8WTJu9XntaFsN+zkjNLnICETM5HD1h5kCff8tPggXh
         fGXjXbXUwoBOjYJsO9knraHwCLEX5llFxLGtKMDkSb1fu2i7IcrnTAWGX2yqofwmQiuf
         S6+IOqAZmQd+z6XMWRYCwe5gXDzUq6Ie1ofyBwTLjEntUH9BtLIqhDCOfpG4UFDRwjSY
         0UHgwvPaYSN3lr3a9h8m7R7CLgoOLuRNoDijrfLccAhHwlDxH+3+vWBqjRNgQvlf5wsB
         2ilQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6qF7ZvvL16/XG89ic+4DRBak9GDcCFX7ZdFSH/Q5ct0=;
        b=HdREFRhTbFX4X8wWOu4Z0aG59WcjPDxJ3SHY87MxS6ujMjj3P0EGVohFVjwROfn9ig
         /XYnFii8U+kQAfnurz9Ri8W31ATZTBpva+cTMBQLCiNKIzpMTZQ8GWtWQm9lF+BmTYVA
         Uud3shgRf8e9qhp8jv0GO/TymXY80pZQGlpSTk5GoxqkwNa8/T3dJldOBwn1txD23hkj
         mUmanfNye2HIyPi5te8A//E9OH79wKGLkXI0byWRt4G1636w1lihWuZBXKhcchfEIbu9
         bxW/AjFUAZK175+fIMjvsf3ucnhvNZNg6uOji8yZus10Hfjd9FAhIpLjRCADiVTpU0We
         8K1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:organization:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6qF7ZvvL16/XG89ic+4DRBak9GDcCFX7ZdFSH/Q5ct0=;
        b=jZD0lyjvlHjaH21Mg81OT73pGJWdY2/WbwI42rPdaIkodPUwQPWBKbM/BMhcu5YbUe
         2Neeea31h2EKCsbNAWjOdtfY7oD/3R5ccUCXdBW3Bj2xBPnZ8bmtcyd8Jmd2my1kc23z
         RESckvKGZfWciZ5ON6KOVWYzpUObbx2f9jqdqAGp1ucypgqqAQZUSh3Y2nZAN5hKAAFq
         lcnJG3akaTZquqGts2ZTYLwHPpAjd6WnAapfp50wrzWGRkinH5R2S5Zg9ANVLUf2ztVF
         bb0LDz+nFKQX2kb5t/SRgTdjJJV0eswi/8eSeu4yNRUvtB60IzYRKYLT6/XL8XlpLPio
         DuxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6qF7ZvvL16/XG89ic+4DRBak9GDcCFX7ZdFSH/Q5ct0=;
        b=EbCxAxnVLuMEqrAna61N1HG1BW+hj76t78iKG/JpulZeBeBQNNrOyDWXg3nDyBLzg9
         +Al93jywZpeiUf0FZtQ0FDJzmDQ3WZuN8ieqO8rdxVkUjka0KQsrcYD9GpPgHZ884c0b
         /IliIlBvM47AYFQpVNycJyjf0ssUF5t3hFHlyAhe4Q2QrTBs1H4XMrfLC+KZtqx/SJ6h
         mxU6Nioy+dcMn4AoGfrkv2urnxPM8wkUMh/qTpZdkVSH/ZyKdE565fDhsCMqKuhw1MFw
         74eeZZRzgJe4G1/mHlwQBUkWUGXYVNwVyP6VrgKeRxLrgwnnTSl8F4XduOH3Y7p8ifDV
         Tggg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsUz2rLZCNPfD9dHTvm6s5K3umwGfeK/Fr+D7UfxQIhOxG8ltJ
	9xBDdO/0JJV1mMmBxaV5VU8=
X-Google-Smtp-Source: APXvYqxtp87jN7pbgBtUV5c/iIhLCxlA5UjgUrKZYSLlA6hGddHqG3L0cZwMg7NEg8rDQm8LkPl85Q==
X-Received: by 2002:a67:efc5:: with SMTP id s5mr15310105vsp.65.1568115095837;
        Tue, 10 Sep 2019 04:31:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bb04:: with SMTP id m4ls1263466vsn.14.gmail; Tue, 10 Sep
 2019 04:31:35 -0700 (PDT)
X-Received: by 2002:a67:31cb:: with SMTP id x194mr16119695vsx.225.1568115095614;
        Tue, 10 Sep 2019 04:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568115095; cv=none;
        d=google.com; s=arc-20160816;
        b=ewjU+HKbR4w0Fc9nJpomLPcJ42mVIbNmsfRvXkNAaDwFkbzoFLYZd5U69f9qplJFvu
         a1jsRix7VQyv8ml0ZLlrO0Gd/rTVo3tzGCJAZdj5S4HT6bNkRyIyOcD0SKCwaHEmc4MX
         RIKHxWEGwGthiTuMU55K2wlUDmW07GkgacZfdfdls2W84v/QMKuN6jGh1Z3iLkv+UmwZ
         jEBioGFBr8ve7M7Uc7kLf+eY5IyexTzY7dduJmZSi4dVlhf2L7VTlqXJFYpEs9YMF2J+
         hXf+sPE2enauFzBp5a53foi/H1i8YpswgEb27t+OP+oIEzIlThM+5noazVe4vV7wslLx
         tf4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=Cg6PKu7z0CEHLzr4/m1Pjrive2RQuhhTP5gciUE+N0s=;
        b=A8xWsbC51D3OMhOF43rzjgZvqAAbvJ1gaKDwxmQATrEFDZTKBV6+xiTzJsUq+P+sxS
         mzM9xzCc85MBn5PGZl9vJLbI96aTF4MpjPT6r/mzR9WGQU9UIGdz8eWiGaZ+/3Q7qSoR
         kle4nZVbz9POfF745B6iNjMZJolMa0HVB3g3hsXbvkezsCoZhdSef9MtAucbwbjNxrzm
         nHRS24FRmtcsXo7QAUmZ8so3XWLzoQWKRM2VZIYmVFcH27xSDWaI8jOTLakSaQxXBaK9
         3qJSsd1S+XkD9NK4xuA8AK0lp0U6EWfkysL3nJ8M+R5IbduEeBDEjfTQ2UbiCcztaGEX
         Mh3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id 136si1113071vkx.4.2019.09.10.04.31.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2019 04:31:35 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2019 04:31:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; 
   d="scan'208";a="196521788"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga002.jf.intel.com with ESMTP; 10 Sep 2019 04:31:31 -0700
Received: from andy by smile with local (Exim 4.92.1)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1i7eMs-0006Jq-BZ; Tue, 10 Sep 2019 14:31:30 +0300
Date: Tue, 10 Sep 2019 14:31:30 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kristian Klausen <kristian@klausen.dk>, kbuild@01.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [dvhart-pdx86:review-andy 57/57]
 drivers/platform/x86/asus-wmi.c:422:6: warning: logical not is only applied
 to the left hand side of this comparison
Message-ID: <20190910113130.GA2680@smile.fi.intel.com>
References: <201909100442.LLEfPkdR%lkp@intel.com>
 <20190910035936.GD1778@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190910035936.GD1778@archlinux-threadripper>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 192.55.52.136 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Sep 09, 2019 at 08:59:36PM -0700, Nathan Chancellor wrote:
> Hi Kristian and Andy,
> 
> The 0day team has been doing clang builds for us and this warning came
> up. Please look into it when you have a chance and let me know if you
> have any questions.

> > >> drivers/platform/x86/asus-wmi.c:422:6: warning: logical not is only applied to the left hand side of this comparison [-Wlogical-not-parentheses]
> >            if (!strcmp(battery->desc->name, "BAT0") == 0)
> >                ^                                    ~~
> >    drivers/platform/x86/asus-wmi.c:422:6: note: add parentheses after the '!' to evaluate the comparison first
> >            if (!strcmp(battery->desc->name, "BAT0") == 0)
> >                ^
> >                 (                                       )
> >    drivers/platform/x86/asus-wmi.c:422:6: note: add parentheses around left hand side expression to silence this warning
> >            if (!strcmp(battery->desc->name, "BAT0") == 0)
> >                ^
> >                (                                   )
> >    1 warning generated.

This warning is awful.
Despite using 0 instead of false.

> > 
> > vim +422 drivers/platform/x86/asus-wmi.c
> > 
> >    416	
> >    417	static int asus_wmi_battery_add(struct power_supply *battery)
> >    418	{
> >    419		/* The WMI method does not provide a way to specific a battery, so we
> >    420		 * just assume it is the first battery.
> >    421		 */
> >  > 422		if (!strcmp(battery->desc->name, "BAT0") == 0)
> 
> Wouldn't it be clearer to write just
> 
> if (strcmp(battery->desc->name, "BAT0"))
> 
> ?

Thank you, I will update this, but see above.

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910113130.GA2680%40smile.fi.intel.com.
