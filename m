Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBS6BQL5AKGQEDBCGSNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F0824E570
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 06:36:28 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id l195sf2489970pfd.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:36:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598070987; cv=pass;
        d=google.com; s=arc-20160816;
        b=XaqoPu/egp+t9V93mHs7ek14oTk65iDqiMJt05Z5NX8DmjVhcuakAQoX39CEQOkXw4
         85qkGUS44NaWaYVgWtNilVcHKUalif4RCQgRzNprwJ1N/TMvTsgInfNO5rtmcI9OavIQ
         fK+LxKV+quH6btrF8DOefY6/zDUFkWEofdgnXchBTGdr2PUEBNmfQ1gxcULWY3sTgDys
         gAAjnUczs3Y3FS9PRkjvW/fuBOOerxODk5QMTbxPQnIuRtFtC1ZP7u2Map2C+dNKv02k
         /3Xbx/MyEVBCJW3wDfmLRnmZ5ADsJDJKOlRnIM0Oh8+YaRi/cv8ftT12zbTx0Z0e95Kr
         GxRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=fRKzmEKwmlMWGtT1uVNX40zyAyuI+mNd6BAK2Vhi5N4=;
        b=M6JpifPZeYFldgJR7cPwb368s72fwoCrRZg03tKXDHG6jzNmqc9VzOiGw9CbSjnbTH
         MR94eQZr2pNUdBl3m+GUTkGSANCVsad0i4Kb6McyXDi3xyU6UA1HYKF0CnOaQ4TsK9+A
         uIE91jGDHA7AusaBZ/qWSJgS73/xkZ4KjbQywGRTXprzriO2JlAkdK+kqHCXqQoHH7yW
         4+JwkbN51qdJCgMsLZZUoR5ZpPW2/UDrRLrbm3mvI4uxqECeOChROutcLeQTtLZftiTP
         g3Pp6N3gwdzdk5OzKqMZzTHXJfbUtsnu8eme2PSI35wTGzRTIZptIfFWmr5QGn6RvlUv
         ZcXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nETSiJ6G;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fRKzmEKwmlMWGtT1uVNX40zyAyuI+mNd6BAK2Vhi5N4=;
        b=UyRfMybDnEsxZcTO7BncTg2jzC3UfoaxgEFUOrU/yAvHphUwAGwISS6dHWL0Gw726N
         XvZ4f95TVkM2ExtS5ozC3WPZ7D/UHRz8srC1XDGjdmmv4T+nc5stZnerumJNhzb20hup
         xXMO2XpgcS+Ab+jaE5d60ItiMLyFdkCPojHL55uvWHoTfnBg1/MpyWN1kSZJY4g7CSW5
         VjQzmU6FzKAspi8VoXSBEsl6Bx85nSPYFRe9VLaqI1EPi4/ws3XAonsN5TzcGIpOVbV+
         FwaZctZhGqNJ4QRNlPjlIyhKqZDgdhx24O7vGcsXLdjCYnuBTF+0VpLB0X01Ttj99Ij1
         GiCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fRKzmEKwmlMWGtT1uVNX40zyAyuI+mNd6BAK2Vhi5N4=;
        b=cPvyaHXvShwVZOayyFaP7hyeN7BpB8tnx+D6ExpG06OV0zMY1aqJKjJvI/SpN9Nq/n
         l/m0v6ZG8jvWmB+l1MJYqjuzHMP7NnFNuLy1ghf89P2LBpLLBJtqu2j+nrjPmDybWBxx
         uerVAUIfultNZe+1F7zO0Zb/l2vscYH5bqCT7fzwFfCvhoFpj/goIX4VKtuI1dFew/FD
         mLlKAWM67Cvm5DACGkZtZbDe83tQ6Jfb9GH4HDEEksQbUFGeMAnjJY5TshHsM5+3H6tC
         CyNnWHGibrliGqQftqnEOx+HM79nopbd0emmKwsh9YDpcuqOEvG8cQp2Trx0ehClm0zU
         3l0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301Kws2QrndyQez/54zvI9K7t93jD5mVXGSnOuLbuKMawncG1mH
	RGfFzS8V/6yq7xMhmVGrVRE=
X-Google-Smtp-Source: ABdhPJw35e4CSy+ISUeRp1oH131TvL0oNMZNUVYHbzVbPjMvYZqgj3QcMrrvUMgi/xxOCaoWWhw4qA==
X-Received: by 2002:a17:90a:e986:: with SMTP id v6mr5263124pjy.88.1598070987288;
        Fri, 21 Aug 2020 21:36:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7593:: with SMTP id q141ls821200pfc.0.gmail; Fri, 21 Aug
 2020 21:36:26 -0700 (PDT)
X-Received: by 2002:a62:7c4f:: with SMTP id x76mr5230496pfc.124.1598070986813;
        Fri, 21 Aug 2020 21:36:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598070986; cv=none;
        d=google.com; s=arc-20160816;
        b=qz3cTPXqClU1z6xYyyvfOUtiqMRw8y0hoHnLHh3lXWbXpuSh8tLPrsPwllbG0IDc8B
         MysVNfPBGz3g2FfL6ZW2jrnu2kaT82p2JtQeN9SYNL2aWyD0r9dJH3byW6QhfizQLJnm
         AU7sSxOXTV8QJm4HqGN3inIS/C5EqkGX2UsHz7ne8mVhvx4dLcV05pIqpFg9scYlWzY8
         rh6LzUN84hGjjiN+8GL/bqxuxn0p7zSVWweLZPRYmBnC+3Y0EXulyxAMdVLRpy2QsaYO
         sAU5yIb7sV+oBC6fmOCzXG+4UDzWl212jTMQHeEOD3kP7tdyzbIQt3234LDSVfqk+3ds
         JfMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=rSIgi0UFKz69QzH3NpYejP9Y0Myj8ahAjyAwuXUo0y4=;
        b=w7EylbE6uGPb7vZKXWxRGUxl2WYh1s7dbnfJ7kV/mxsMVoGIltQeOHg4A0bV1CnZ2d
         BtA431vMtzUmyw6FZaMFFIqx2o42E5IU8f9wf6Cjnrm76TWh2/zDGqtbthIc/mHlIIpi
         OAsFaywjaihRdolw4WSju6NIHbvyPNv2upyJtdCXG1CP0o1f3/RIeJ/VUC1t0LFkvhLP
         Sp3/Hv7ztmcECVWg81S9+cMBh8KaHFCMRd2V8EEFL65deTHhxn7lxP6rDk9XuyOnPzkH
         xO8z3yEAr+1QsCrVRxuFRHQ6/CEvERMQ0RFyfMe6f9zP9TwRWeop9CUE3CCAfFuX19dh
         iTJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nETSiJ6G;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id s14si210418pgj.1.2020.08.21.21.36.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 21:36:26 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 07M4a53R012182
	for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 13:36:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 07M4a53R012182
X-Nifty-SrcIP: [209.85.221.176]
Received: by mail-vk1-f176.google.com with SMTP id 186so873096vkx.4
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 21:36:06 -0700 (PDT)
X-Received: by 2002:a1f:7347:: with SMTP id o68mr3766544vkc.26.1598070964727;
 Fri, 21 Aug 2020 21:36:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org>
 <20200821190159.1033740-7-masahiroy@kernel.org> <CAKwvOdn9ZfvC4dzuVnxc_a52JFn_q1ewOWwZZD5b9=izeEayKQ@mail.gmail.com>
In-Reply-To: <CAKwvOdn9ZfvC4dzuVnxc_a52JFn_q1ewOWwZZD5b9=izeEayKQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 Aug 2020 13:35:25 +0900
X-Gmail-Original-Message-ID: <CAK7LNASt-PnF6gaEoS-8nNjrReszWAeS02_4XNLQtE9wv8w2AQ@mail.gmail.com>
Message-ID: <CAK7LNASt-PnF6gaEoS-8nNjrReszWAeS02_4XNLQtE9wv8w2AQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] gen_compile_commands: move directory walk to a
 generator function
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Huckleberry <nhuck@google.com>,
        Tom Roeder <tmroeder@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=nETSiJ6G;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Aug 22, 2020 at 9:41 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:

> > +    for path in paths:
> > +        cmdfiles = cmdfiles_in_dir(path)
> > +
> > +        for cmdfile in cmdfiles:
>
> If `cmdfiles` is never referenced again, please make this:
>
> for cmdfile in cmdfiles_in_dir(path):


I intentionally wrote in this way
because in the next commit,
cmdfiles will be selectively set.





> With those 2 changes feel free to add my
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> > +            with open(cmdfile, 'rt') as f:
> >                  result = line_matcher.match(f.readline())
> >                  if result:
> >                      try:
> > -                        entry = process_line(directory,
> > -                                             result.group(1), result.group(2))
> > +                        entry = process_line(directory, result.group(1),
> > +                                             result.group(2))
> >                          compile_commands.append(entry)
> >                      except ValueError as err:
> >                          logging.info('Could not add line from %s: %s',
> > -                                     filepath, err)
> > +                                     cmdfile, err)
> >
> >      with open(output, 'wt') as f:
> >          json.dump(compile_commands, f, indent=2, sort_keys=True)
> > --
> > 2.25.1
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn9ZfvC4dzuVnxc_a52JFn_q1ewOWwZZD5b9%3DizeEayKQ%40mail.gmail.com.



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASt-PnF6gaEoS-8nNjrReszWAeS02_4XNLQtE9wv8w2AQ%40mail.gmail.com.
