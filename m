Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBKXR4SCAMGQEJVOMGYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id A47BB378D7F
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 15:44:10 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id nd10-20020a170907628ab02903a324b229bfsf4787453ejc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 06:44:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620654250; cv=pass;
        d=google.com; s=arc-20160816;
        b=U009mUOZp6qLZsNEGZlU1xlADvVt9YjD4K7ZK4kHc4/q4i4uxQnsoHR13Wlwn+It1/
         C2ZaBpbXUOerr4t8pvD+hLVxorArj/S6VDm8WNJcg1kYaVGb3FmX4JZODb/niPcWiATf
         aP95zd8DMEQGAwDBNocH0DfTE4ZFNY+5DG9bG9dqw8suEjYH9e76vw20CdAMv+apudNo
         9umBsBPumWtD0q5j7S/4yJMiqku1VoSu3SN3IMA1OsCffqGlrdYjjgzrdQFFkEyEnet7
         ulZHYSEl19SksumMm9JEOHKVoYPl+PNlAash59oUXbGLzffHVNws9KU7afbHCJ0I9MtO
         djIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KJvtTQcQ1u8APvA6DJOw94Vzujcei7fEarjW9wsbx58=;
        b=AN2qH8HeZ2zLfRjv2hsSRu7mub6jvMGh8ioPde4V+ZWWVgajTktmvLnYgtwD7b1G6e
         i/jv3ILCJokk4lzvunzmSaBZZvT6+g+W3oE5PL3gN4cM+T0ahrFqpoa5kw4wS8eZHILV
         Y1YWNjRBZUWgPFjO4rA+ksU55XSD5olIl0qYRo2HFdT8ids3A/4hAZM+qcDCQrScBE4/
         ah/wrYO8CzGXWLE2PF3QHeUNMuur7Kozhx6bYsd0GZaJ/PsUK7q7VX6hj3ZmyzSEAw0B
         sDjrI+d1mLfQjEDbauIjPwx15IReeZYZTwBewbfy4rlHCkW9/hJ02RyIdIYytUIBMIIo
         CZMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KJvtTQcQ1u8APvA6DJOw94Vzujcei7fEarjW9wsbx58=;
        b=EiIaTLJaAg1J7RSwzbUjp2NxNNd3LIXkVOtFhyb+2alukRTzjl3SAkBQy3hY5aUblO
         ViExS6v3EY6jW9vKYthqhDZuDY7LVL9FVLHfDEKX8kGXMPyvjfvSZU6ewJ+Rq4Kgo8Ju
         mTpmEdTZZUuF9ujO40Exob3le91jxGf139JtAdUfAME8crJVz0J4VTcqzE6W/Zw2Mabj
         2Por7OvAFAAGQ+D12mrQVwkG+S/Br6XLhVF4tpp6ANENgr6lDBR3KQgbxLBqNc2O/A4D
         q/gO3BWl23otC/WzoF9ahEIfsZNYgkzYiFNIyBSHHUrND9FKDXJ+K7m2G1fxIm6mdh5G
         yQfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KJvtTQcQ1u8APvA6DJOw94Vzujcei7fEarjW9wsbx58=;
        b=CFSkcE59SwgZNxpIK/yz1kZjkA77uTfU6C8d0DexLOwi9U3Cf8Ip9mcRkCJuC4sDzx
         uGhXKQjGatBe6zJfIFIp7+Mzp5Qd++nn1k2x3wcq4qYatrmzDkQFUbKM3cvEpj1MQV+6
         8+E2p3CE2U9YwAPvFNCczxtTIk6hdw+dqzakC/pLgBvEzSTSPIji2Zmwfpdcwe84YZFY
         f3cXjK4FogkhsZxObEMckfmIwaImBUIlIoKELoJLDzci1mUqNQ3Smk0SLyO6XlaUdzGB
         KMOFa3CnmQ++Q3dfFKiVAJnWe+SinBUYz9SCnRgGaGN0uj28gtc/YrpnuNZZVHolCJl+
         68qA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+81L4drjJeUfmETF0v89cLEyusHU1tAXW853D8vuV0blHsWAu
	nnXVQXac7iQNGBE0K4+2oZM=
X-Google-Smtp-Source: ABdhPJyONSJX1ujSzegJhoVC30LR5TeTrXNDfhMU94UYn//i7Zwu5O10p+veu9xget58T+BL329s0Q==
X-Received: by 2002:a17:906:d0c8:: with SMTP id bq8mr25281013ejb.423.1620654250339;
        Mon, 10 May 2021 06:44:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:704e:: with SMTP id ws14ls6524550ejb.3.gmail; Mon,
 10 May 2021 06:44:09 -0700 (PDT)
X-Received: by 2002:a17:906:3453:: with SMTP id d19mr25507977ejb.545.1620654249373;
        Mon, 10 May 2021 06:44:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620654249; cv=none;
        d=google.com; s=arc-20160816;
        b=jbgnp5YWxXIHtL3z/1dNLrfpLWcfNkuMMs2XX1sSKcPu2FwXpwt/Fb/63ICe603NJG
         jJFlTFpcIhQL2nKGdwkchLg+LE7lqxXJSiay9k75SrxlFc5JckXBBnfmghCI546yIkYG
         Awq+7fVEeS7U+1TLSi50ob/WZ/Pob7nm2NWmAb9fznLG85VPcVp7D0NW4+/8PKCgJoys
         /CH7kfIvk3sggiHfpQMOrtH+jVpASmBrH0pawdaiwKM6yXPl1+XOPSo/RQFtrX1QeSYa
         C+5fFueehduwGSFoMX1TQHw3QR7TEo8MZcziUcl1mIqkMab30cEPQml9C+uj8W4fMl58
         Q9Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=hLm3FnH8NjuaqeIcOGA6wq23gUCKLCxZXR40tuVzT9Q=;
        b=m7ORtWXUHb6OXwSoLVe7XOWX9GxjzvOp86pdH952/agMr6bOdaxocc0YpBSZ43KD3t
         vFcGk9wlxV8MEf6wGasZFk0a5eNWtiL97kcPJi3ybMppyZ0v9VqoYdbmqBD04a1GhAHc
         dUyvEKCE8yHSIx8iLRF92XmZHLmPfu95wCnJGy5CDaZaR0prpSRKUZPQJW2I1OehrRPj
         IhAGuaBpgCOwhqG6KEdN7+WVy1VTNPNRokvIFKEj2QsNfuVCMy58OX2BzLlxbs9fIkPH
         36gCynChhmGNySCWgQJueCAKbpuZI5SxNzqgI8IlLIw1m63Cn9fkjoV0z0RomkAqqR5E
         LSRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id n3si607217edv.4.2021.05.10.06.44.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 06:44:09 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-ot1-f50.google.com ([209.85.210.50]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MAxLT-1lmNij37ft-00BKEs for <clang-built-linux@googlegroups.com>; Mon, 10
 May 2021 15:44:08 +0200
Received: by mail-ot1-f50.google.com with SMTP id d25-20020a0568300459b02902f886f7dd43so1003914otc.6
        for <clang-built-linux@googlegroups.com>; Mon, 10 May 2021 06:44:08 -0700 (PDT)
X-Received: by 2002:a9d:222a:: with SMTP id o39mr20683875ota.246.1620654241959;
 Mon, 10 May 2021 06:44:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210510085339.1857696-4-schnelle@linux.ibm.com> <202105102111.SyGVczHt-lkp@intel.com>
In-Reply-To: <202105102111.SyGVczHt-lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 10 May 2021 15:43:08 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0CiVFvgpJJMcutHv6gdfeKWN2=AWYDuAX-ohEg3+L3gQ@mail.gmail.com>
Message-ID: <CAK8P3a0CiVFvgpJJMcutHv6gdfeKWN2=AWYDuAX-ohEg3+L3gQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] asm-generic/io.h: warn in inb() and friends with
 undefined PCI_IOBASE
To: kernel test robot <lkp@intel.com>
Cc: Niklas Schnelle <schnelle@linux.ibm.com>, Vineet Gupta <vgupta@synopsys.com>, 
	"David S. Miller" <davem@davemloft.net>, kbuild-all@lists.01.org, 
	Networking <netdev@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:6mVCWaWGzqrgHsd4P97XZSS/ce+ZBQlCi/XraDkII3Q2hQPd+Al
 eZtZBfpSd4LUO0pzQXI+76rNilbNXPN+N1atdULOwFBOhv7tscBhzaY5j6GWbdIcUS5FQ0P
 I8EsdB/gAsChTzHYrVpFSApP/Vh4D7hLvftOxsNDPUPbx1t47M3q0UJ+J66CT4z9+MtdBEN
 NMoqvOi+/9j7OyjGNte/A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JHQ7+ZBUQME=:u9F7axjroxOOtP0RVUPj89
 o3A5/bVBMonUUDf+pQj/ObaA6T/GPn8JnK1klA6eeG7UDseptDODhK8mR2exxTZt/XYDANA5u
 hdx6Dmtq+nc/m92uwLh5tAoRaIDy41OzGgNWkdKpfMe8AMZA6lYLTx+x/3PuqSEY2z7X9T/WW
 7A0dHqErjfmEfH2KTokUuVqihpfIAkEvylPQ/aqboRAcD6VKD3ZcAAebWRoKiC1qWnOCrFxuw
 clxEQNkIjacB+T/EDdAu8BVfHKP1FX/L4svnhi5PVBOJ5Xcf89aDEgIUXbl3QE2fARKcO7FZq
 74n96cOOolr+qQ6Cr0tuVS2gvfgjqQCVffSENMvaKv8RcqVAYKxCcriBaAVqnEtmlK68KM7ED
 YKT7jpN/zp0nea14fpqlw3C3/f2Q/cC43cCgQqmoh8ZZjvXr3sR2/Mjh2+pdST/n+9suCDFvR
 1kjc36voXq3vQoKPZInEnJjX1n88ca1hoU0+BHZpHUfLzRBhkTYtPMrTgmHsTg3raDzfjWY+m
 msHZZFDw5lmwtSF2uAFsyxMoG8wdT/bBgF1+CKxmOXQVq1hDq2BjUuf3swfmtiE8wbu1kiBux
 QPPUTDc4/377qe/Dr95ww/abVIPMfKzMAC7jz29QcwckqrqrBijbUjGDCFTB3mv6y34uSSkSL
 S48c=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
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

On Mon, May 10, 2021 at 3:30 PM kernel test robot <lkp@intel.com> wrote:
> All warnings (new ones prefixed by >>):
>
>    In file included from include/linux/kernel.h:10,
>                     from include/linux/list.h:9,
>                     from include/linux/module.h:12,
>                     from drivers/net/arcnet/com20020.c:31:
>    drivers/net/arcnet/com20020.c: In function 'com20020_reset':
> >> include/linux/compiler.h:70:32: warning: 'inbyte' is used uninitialized in this function [-Wuninitialized]
>       70 |   (__if_trace.miss_hit[1]++,1) :  \
>          |                                ^
>    drivers/net/arcnet/com20020.c:286:9: note: 'inbyte' was declared here
>      286 |  u_char inbyte;
>          |         ^~~~~~

This looks like a real problem with the patch: the insb()/insw()/insl() helpers
should memset(buffer, 0xff, size) to avoid using random stack data.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0CiVFvgpJJMcutHv6gdfeKWN2%3DAWYDuAX-ohEg3%2BL3gQ%40mail.gmail.com.
