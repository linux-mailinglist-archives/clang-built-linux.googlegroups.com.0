Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBRPZYKBQMGQE5ZTNXLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 174DB35A815
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Apr 2021 22:44:54 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id f3sf2779435wrt.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Apr 2021 13:44:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618001093; cv=pass;
        d=google.com; s=arc-20160816;
        b=QPM44dUXrxfQMwV+Dcx3U7tmAbOGqXDYptGxPAa39UYy+UMFT/8TkbGv9bdmb2DpM8
         GJs0qpysH34TzpAVFhIHzYi2cYTX+vxGDokVs8fV58BG2sHrenpn0uZNxsyCf3tEYDNM
         XQ6xff+aA/6Lyj+AT3gRrJNNbZAZ2FSZGkd7Qxgx0NJdQjlihbkxC48OjYykLymUvET4
         dFfod4niZOYGYVT+QCnX80/Vr95GfKOfQU4PdkFagmWUGnWsccihezcAyckMH8RaNFav
         et9rM41y2pNcLZqoIkTypZ+waz+2BgyNpB9kgppEjjqTaQr73SzetSZfbVou1zLoIYgF
         21dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=OBc13AYkeTyx0Q3F6xYSNP027t3sRGotyy30uORZZQo=;
        b=v7k49h4z0HErUVCo02fk5uhfUmvx2bxl+oupF1QqWdT2WAo1xdgMOIoafVCeQ+KvJ4
         VAgnBUB1qpYzzPSCi81IZ12MNKVDMKvLg0kdUI5OHExZ2h6uS++mzyKKB1fSxYgtnbvW
         iVNdZEiDNyn+m6k/FBjPg7wLDE8pw9J1n41W77KbKx2Y00YN/FlTM+a1YqNvN1+CG5RN
         6RnnpW2fsprjUiyGI8XLavtBKxPYZUtEMM1z8yvE5EwUuxfh2pl1NvmXTqQquTPzy5WJ
         fqZ3PnnPRf4Ni1KMZVN6FcVY+G9t/vSUP5YZxL0HM31qOgK5tEQxnAPSSUqZpvYnQxL+
         xGfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OBc13AYkeTyx0Q3F6xYSNP027t3sRGotyy30uORZZQo=;
        b=JcXp6le5mGFg2p98m+lt+cKJx+zOZMwXnoaSyNFVYvhr2gOtysNySZJtnWYScQyQ/6
         zOjIlDdq2bGR6zAvJ4wvEXsbFBU0ji2EWf8F07r2KqQJy1U0sompVM71TLLWooukMGCy
         KyIpsGMei8p94bMSzCGEAARt8FODY/oHZDJDfxO7RlYIufiaoa4N18yb5eKtV58dZ044
         D/UYQ8uuVSz97cqAyc7c6MgIuaxrtk7gLeoJPZvxX4HZehSoCtStvlDfLJAIlGPsZeli
         IS5GMqI6Rp7LAWqIsiWeEPeo7IhlBNhf4UR+SWf6KFkyX6tEorfPMiluUb7mwdBg3gOq
         6SxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OBc13AYkeTyx0Q3F6xYSNP027t3sRGotyy30uORZZQo=;
        b=VdmX5TjfgNnnEsqsh7GKJudRgVSC8dqnK0osVrwE+kngamjSPwmoJjyEVOLqFjBZp2
         RNz5HwM2XXNycq9cHPyMJEgY9SHEUh/LxCwcy9VOr/jUnJ+HB8Q5MrYyRXrVZbSifX3i
         T/LEMhXHj3tMBmFRKpAF3YR3jEeBela77d5SJxlHJ97Sl0RRJxWsLdPiPP9QGobz6x10
         XoV01z7n/leJtYRRmoSyaJeC8MOD2Yvk/g4xgstASCPZet5n8Df2TO2M7xhfDNV6hRBj
         FfD55sT6rQNat9H1bGD2l01wBcUtJ1RtbitmZlLkVZ0yO0sDntggRbJr6a8BsSNadapG
         qCNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OmBOdwrlY7UGPdxt/Ih5C0zZ7OFMzmCloxaCZxlweLOhyL9qy
	8IylGlcnZs4nwy8PhOkL0mA=
X-Google-Smtp-Source: ABdhPJwW2obKVeFly9mLBo8qRs6lOImC8pbjS1G70n2Zrx+r1fYV/B5CyQ5A3zu3L/AqhHK8Sfnupw==
X-Received: by 2002:a05:600c:4f89:: with SMTP id n9mr15649728wmq.133.1618001093798;
        Fri, 09 Apr 2021 13:44:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls1233300wrd.3.gmail; Fri, 09 Apr
 2021 13:44:53 -0700 (PDT)
X-Received: by 2002:adf:c3c7:: with SMTP id d7mr19369458wrg.285.1618001092993;
        Fri, 09 Apr 2021 13:44:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618001092; cv=none;
        d=google.com; s=arc-20160816;
        b=u8+dv617xXjkpd3JVA1+69oZWKSWL1/iKfTYiYm0BlatbNsEw/pkxShwilrgQGwCx4
         56Her5HnyiRh/WC1032VgHmPQfydGduCoVQG4x8zUJtymitiw6qPEU+5wCw6Bhitoa9X
         AjUtdmVuq7LeAIPmUaadR2H87Ne9BAqwE9PTWJliFNBzB8nCM/n9Km/4SyIywk4vUJiS
         HXwk8EyfU++Xdo684ENjGiAseVWYUucPTCzigXAFd+T3th6FalfmPwwY5cK2AjS98ybD
         qX9d2RBv/7A25ZRak7plA8LLfTxeCXmdCc+lJtT/NYxwI3RiExwlOPfe5ToNAJw3datF
         uW0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=goEGw4h+qp8MCss6vVg52X/npJOwNjvdlkEzY5bdzwg=;
        b=QHXNirg+XyqRH7ydxVswg2PiQK6Ip9IRrN1EcrDAd3IkvTr0jOadcVJVHTlhFIZwX1
         u4J0YZdcGBRwK2CODsw5a7Crfxf8zEIVPzO9sWR+BwXh4FWihNUYdg01XR5VWDnt+Xx5
         swUCfjfEhgH2HGZ6PgFybr82OInutZWKBlcZW4mILSZRvjDUFX/3XXpsClVbYuJBFDgc
         HYhmv98lKwSpaRd04+IG9oCOaAWn2ez0OCUxUHd/4UkDKfV0I74CqP6704oMfBea8+fX
         fq7vAcMZEDdFfRl8u1oKlqIwCGOhpMC5z6vUmzO3TLLw4Bz9fLs0FM+uA7rNyt80TOpx
         +ImQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id i16si196245wmq.2.2021.04.09.13.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 13:44:52 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-ot1-f44.google.com ([209.85.210.44]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1Mf0Jg-1m2Lwk1CA6-00gadz for <clang-built-linux@googlegroups.com>; Fri, 09
 Apr 2021 22:44:52 +0200
Received: by mail-ot1-f44.google.com with SMTP id y19-20020a0568301d93b02901b9f88a238eso6913749oti.11
        for <clang-built-linux@googlegroups.com>; Fri, 09 Apr 2021 13:44:52 -0700 (PDT)
X-Received: by 2002:a9d:758b:: with SMTP id s11mr13660259otk.305.1618001091031;
 Fri, 09 Apr 2021 13:44:51 -0700 (PDT)
MIME-Version: 1.0
References: <202104100225.GIF5USvR-lkp@intel.com>
In-Reply-To: <202104100225.GIF5USvR-lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Apr 2021 22:44:35 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0noWaAQV=cqXhLuEXC_zr35Bb45PiLhgE3bXqFnNtyQA@mail.gmail.com>
Message-ID: <CAK8P3a0noWaAQV=cqXhLuEXC_zr35Bb45PiLhgE3bXqFnNtyQA@mail.gmail.com>
Subject: Re: [ext4:dev 9/17] fs/ext4/fast_commit.c:1738:5: warning: format
 specifies type 'int' but the argument has type 'unsigned long'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, "Theodore Ts'o" <tytso@mit.edu>, Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:D8M3vC/msHxcrJ25pKPMUTEcvv9294wivfLvSb1yWHYM73CtjQj
 mHRcS7J2gAfW8txqkuN4zKiSgq+2rgZEiBbhtWqgrCUGiiiuQauQDcgPltoTb73W8hxdDho
 93E+mnFjhxKCMS4bpdSvdw893k8esa6h9N/CgzaRw/Yz9k3To6s5EPD69WwBkoFUGw8OtBw
 goWE+cx9sxwejEoN/vHTw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5tUUp/Rj3gM=:RMXG4FidI+9ZyRlxiKLuC/
 jtIOaBQ3VN8TajFTloQp/Q3lReMt2FQFdqdwfVu4Eef24925dEGdw9YiXuJS+g6/wvZ5BS2Kg
 ApbjkDjFm85I4ariWeLwOivBf27XF0HjfycU/y7SrimAg9+wO3QUE6pM762YkonCKeLpxrSUt
 NBIK0wTu6apMlAp1+qF6BjQR8iEgO+pCKkBgW/xdAVmjEPYQFYTWBgCjjdkvwcZBxh8bEqqik
 ytZVfJdRLcAhbVpbN0341JXJB1yEOBg8mCgA5eoRA4dZrmtD2NGS2scq2Gg1x1j7sQRgKRIt6
 +i+4xBbm/F/YtTdv8hEzk5N1FAzw34WSKLNNgeb752nQJ03A+qnuCwMM2xMmvzP9C6F4LhzaK
 fpmBDLqnasUsKZW15SBYVTGr0CSYOyPoePeVZ3jn6Lf+G7ssT+UGoKctMQJ6PFCu7+3Di+KUY
 c8YbhIgSOR6bWRVn6fyVEzhUQOSlM1AU3out756uewrh5oAzcJkJHr0umL3eZxV1gj+LhpEb9
 OnPSUM/Vo9m7v0PRL48Of8L97RcRICU+gNO6EAG81SX63VAK/38IZ082HLAyowreiilGthj3D
 39B0zW1JJhhe1HZH4yuoG9qXPBju03MVhM
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, Apr 9, 2021 at 8:59 PM kernel test robot <lkp@intel.com> wrote:

>
> All warnings (new ones prefixed by >>):
>
> >> fs/ext4/fast_commit.c:1738:5: warning: format specifies type 'int' but the argument has type 'unsigned long' [-Wformat]
>                                    map.m_flags & EXT4_MAP_UNWRITTEN,
>                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/jbd2.h:64:51: note: expanded from macro 'jbd_debug'
>    #define jbd_debug(n, fmt, a...)  no_printk(fmt, ##a)
>                                               ~~~    ^
>    include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
>                    printk(fmt, ##__VA_ARGS__);             \
>                           ~~~    ^~~~~~~~~~~
>    1 warning generated.
> --
> >> fs/jbd2/recovery.c:256:54: warning: more '%' conversions than data arguments [-Wformat-insufficient-args]
>                    jbd_debug(3, "Processing fast commit blk with seq %d");
>                                                                      ~^
>    include/linux/jbd2.h:64:44: note: expanded from macro 'jbd_debug'
>    #define jbd_debug(n, fmt, a...)  no_printk(fmt, ##a)
>                                               ^~~
>    include/linux/printk.h:140:10: note: expanded from macro 'no_printk'
>                    printk(fmt, ##__VA_ARGS__);             \
>                           ^~~
>    1 warning generated.
>

I sent a patch now. For some reason I ended up testing with -Wempty-body enabled
but all -Wformat warnings disabled when I tested this before sending.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0noWaAQV%3DcqXhLuEXC_zr35Bb45PiLhgE3bXqFnNtyQA%40mail.gmail.com.
