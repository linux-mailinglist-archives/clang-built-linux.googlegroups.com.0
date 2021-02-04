Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKUC5WAAMGQEHX6PKFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 262B530E88B
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 01:34:52 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id 137sf1029181pfw.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 16:34:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612398891; cv=pass;
        d=google.com; s=arc-20160816;
        b=J//r/QDZW3iMt0UkSbHXcdvLt9riNbSY3GvcI/wHroHlkS/Rxas9+ZqBX5pRc6pSCM
         buFE8aRCLYxDgkyqoQZIWbaI+4Q6qW9KFP+xaMuOAD0TEG9bPfvZr5MNkG0GTrTGeFTp
         4fLZUom380mAVSbNreegujTg8d2Ri3CSNMDtv/m+h1uZB5Qqp9Mi/jyb4oOZVFNPglgT
         41sYSVc7AQMuS+QWgeGA/tO+45PNAACtpL0xfVfAKcEcwFF5ZJlWAQduMVqc0E3uVx7P
         ubczwrK2soiRZb71GupdPsQRC1gNNUjlIJC+ayFjkNZsVUmokAhJpSU3r4en4vf1vCXb
         Xihw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=cKPLG6/IQi+tCxsLs3OOJyQH8vXaAp36HHsrP089T+A=;
        b=F/OWLdls1mFHPNpI8zuEUEqBiXJqOnTAJdpfJVjlnTA7KHHLMPaqshLfdbzSyQf66M
         lWC6+Ai4nUyRBhqIZeGxe2bjy7GA3ICxVJAp93yeWDvM4+FJ3YPj8E6/tLLANrVviFQz
         u9XI5AAXLKjGzizVjL+Jnw9qepdl+MCbOlDj3I35+TmRQIW1Z/4UhZJFJzhcP5PEBgPi
         f9HsHiMyrts6TsT0XLtHCa3yIlStFsQd5d4KXLsLEU54S6AJfRvrUHhi+fWzO0sLR/LD
         ulOD++HbzP2vkSPMe5ItqF19A37gVnv5p8+FU16SZTPLya+Qzw5otl0l15OL30egalxu
         9MZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=H4yoYxnG;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cKPLG6/IQi+tCxsLs3OOJyQH8vXaAp36HHsrP089T+A=;
        b=mWFy9jxOOIAljPEWPclt6+7tNWgOOgUipoyhLygfK7s36/opGj3nydo6SQnxipUUB1
         YrH8M5pORh1JQylRhOflp20uvdpkqi5djd33b33KK1rR2m1q3LHbfGEV3QYRWeWYwzMB
         +QlIe6Ins5SUveKZPiatiPi0i08rhNyRMtZBYOvFtmhP/nddBxd9Q79tQTS5xr+4ehSj
         3CLweNiDbGmX7GzTHEJmcBg8ac6xl/3ay4G1lgUwKau3tpeuSDQh787nzuRMtk/I4VGT
         4pRLJ0o1nnGafOhWk+SH3X98s1romL/AC/mWCFmbYONe7ykym/GyJeA6N7TSI+MIsJwf
         Mk9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cKPLG6/IQi+tCxsLs3OOJyQH8vXaAp36HHsrP089T+A=;
        b=O1vedrJTSpMA6zTMRMMzKdGk+DTk3YCujE96a/H6rapSQAFRmV4KXjQ6ZAD8YbPWOO
         LVZXGmXByim10r2N+hK4+v3iJvADW1xO2Cy+W9zuK9vjGcwLkqJYy0uAXJn/3D4tjVrQ
         zPMBGZXT/YwKmau7I4a8N2PgXI83YMfEcGYweuaesUlQ7eOh6v+nqehSGNTiDV2Bg5RT
         kqMu3k2i65tkMsTaMG8ZWcwKnmQ7sihtTpSgI2xAv6TTol0yXBsvMxdM/TlHIbMeP9or
         SOvgKfJVRYEkim1MEorP6YLqZP49+ykoeJmypKtt+OtigMR+FHp2jgMmTlsmA6/22sNL
         MqZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302FCRg54CCu8gIiHaKNCyIgOtV0b7HtSbpg0CQnA/9A1mKGN4S
	vPcbbygp/deC6QHHMYTNPRw=
X-Google-Smtp-Source: ABdhPJx2wXRyXsvqX8fDmAOYS4iGbeGMwAZbLrKarWOu8zULqwPlmN1mIf3atQT39Q8aVv21uh7xiA==
X-Received: by 2002:a17:902:988e:b029:e1:2c5b:321c with SMTP id s14-20020a170902988eb02900e12c5b321cmr5340347plp.54.1612398890903;
        Wed, 03 Feb 2021 16:34:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2dcd:: with SMTP id q13ls1891475pjm.0.gmail; Wed, 03
 Feb 2021 16:34:50 -0800 (PST)
X-Received: by 2002:a17:90a:6407:: with SMTP id g7mr5725447pjj.56.1612398890308;
        Wed, 03 Feb 2021 16:34:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612398890; cv=none;
        d=google.com; s=arc-20160816;
        b=nixpqNREeE9IY/TlV56TCdRD74AxaLHipj0CGH+moj77sM7Z7JPPT4MZZcKMnhX/zT
         hx58MeefzUkY5SALIezeiEEMEzCkadgyTXS22y332g6UxSo6aZuiCiK5iaU9ODz2Z4WO
         9mqY5onAEhGgVjk6KRi8/tHXNl0hsdYGEewAyLD//C9va9FXmcZAXlJ2SjqJ8PY6dZzx
         waji9M5nsM81DBzJIlHgCcOvebaBxV696aatX4Fn9CgRpcQjcgnZ5WbYIwsRow/igqkf
         w3dY/PL24H+ULm9kuHg2f5iVXyH6uC0WCeXF63yxo/6zipstQ+nFiMAIJ68mBNx4qHPK
         kRFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=d0o4oX2TkUWeKmRsE9flKYZWBAGhmf97FwyHDWzgr/A=;
        b=xCfkwGgPVUnYNQn4J/mWO4trOdt7sPz6zbfidljY2U+cjufvqk2ItvHdr8wSjB15Bt
         5J6xcRW5OmrtpYcEfxdNgy69lclpYeVYWJ0DBvkt0EA7lF+UvXwSRom9pEA7tu7nt835
         nDL1xbFptqznn3x7mNbuut6iScqQTbp/008y8QS2mBom7J/g7yjH/su/TSJteo20gpKm
         XRXxlvz+VNMVOa8C2FaFFPe8W+XPonoKNzctf8rTg2sabwEFRCiuBgyj9cAHeVk8vjmu
         1gkr0bb9EQgB3XOOixFVBqVf3EgeNs/oIC0tipqUHmzuOB5FJO6A4CxRfv1FKXj/Seq0
         5Q7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=H4yoYxnG;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id d7si176268pjg.2.2021.02.03.16.34.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 16:34:50 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 1140YYP7030065
	for <clang-built-linux@googlegroups.com>; Thu, 4 Feb 2021 09:34:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 1140YYP7030065
X-Nifty-SrcIP: [209.85.216.44]
Received: by mail-pj1-f44.google.com with SMTP id lw17so4170559pjb.0
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 16:34:34 -0800 (PST)
X-Received: by 2002:a17:90a:184:: with SMTP id 4mr5642894pjc.87.1612398873991;
 Wed, 03 Feb 2021 16:34:33 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-3-ndesaulniers@google.com> <CAK7LNAQW3XtBGAg6u+86wGc0tizDyezZ_f61JjkT15QH5BtGjA@mail.gmail.com>
 <20210203233607.GI4020736@tucnak>
In-Reply-To: <20210203233607.GI4020736@tucnak>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 4 Feb 2021 09:33:56 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQH==pU73=tF+wHNKPn4J1WvGoxo3trZ9pBU7d-qFK6Yw@mail.gmail.com>
Message-ID: <CAK7LNAQH==pU73=tF+wHNKPn4J1WvGoxo3trZ9pBU7d-qFK6Yw@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
To: Jakub Jelinek <jakub@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>,
        Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>,
        Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=H4yoYxnG;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Feb 4, 2021 at 8:36 AM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Thu, Feb 04, 2021 at 08:06:12AM +0900, Masahiro Yamada wrote:
> > GCC never outputs '.file 0', which is why
> > this test is only needed for Clang, correct?
>
> No, GCC outputs .file 0 if it during configure time detected assembler that
> supports it and doesn't have any of the known bugs related to it.
> But that means kernel doesn't need to care because GCC already took care of
> that.


OK, then I am fine with the current code.

Thanks for the clarification.







--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQH%3D%3DpU73%3DtF%2BwHNKPn4J1WvGoxo3trZ9pBU7d-qFK6Yw%40mail.gmail.com.
