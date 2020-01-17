Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBNUGQ3YQKGQEZ24WOCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id CD93D1406D2
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 10:49:43 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id r67sf10116280yba.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 01:49:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579254582; cv=pass;
        d=google.com; s=arc-20160816;
        b=tBvX6bXG9/ZvLLvghXtqZGXM0FaiHd2LeRuHkQd48pVAp5pLJeDCY0yb6e+5R2M2XX
         RSxbjUgMuXjv8LpDo28kYjQkMUe0nfqjkjbVfk7krwJSNBFYPJRsCbp/KPaGSTjBs1XR
         x+2oNMHj3qPjFRtXvZK7aJo8mKDktQ7+I6Eip91Up8gdcqVnNucszxc9JgPv6BVyhDii
         cvKr36CZewezYCraBU+Zv4xGi4BZzqxS0LlQppUKImbZwxj14OAz6PurnsH1iaKdGTP1
         n1/SsgT36jbKCcMAx65G1i3XOYTxPX/1Hus+F2tSlwWDnhjdADXh/HqN/TknBmufYoW5
         uQmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=0E/MNKf+B4zP+oEc6IN16OAkbyQIHeKGlGeDn4fx6X0=;
        b=KIeuAFiOR3fDbNEdCQmeybDiHkQrTcvJDBFBwiH21slpdc2SHrxclv7I3x1lcmR9gm
         bIg8XId/QhJxC0Nh9UejoXsbZ1CNUJHkxIW9LOhyvpXRtnEISla4Jm09nw5ThiGKA+Sj
         H4g92G24vyfJWc+vf6LdYMWqzwh6MNV0iUztSI3EGveQv4zkO4NRtPFdi0gRKBCHChuH
         EerD/FIyOSVyBtBBrTNEHpgZj1q39FLa6MhGlUgx2HM/9cAAkUk9uUTjpezD67invJhg
         Y9e6gbpGCyLNWoNJfaDETwZkacJxJuO5JH74zEvumuduik/+LjfhZvP6Ihlpask/z8S0
         AaXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NFumepg3;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0E/MNKf+B4zP+oEc6IN16OAkbyQIHeKGlGeDn4fx6X0=;
        b=UPMd93/6o0utOvTfs5Cl/aw+RAkUjOZ1jHNfBPfI5o9QDdJMfFIJ0bBA5LCXgOw3DS
         D+rznEyHyn513uZFjgCFbiZh1gcVyZwqzoUNUTwakikp6Be4kB+nMuVmdjTknu2GFzfb
         dL/vcBW0a2oVOt+oMCMJai8xA7cvmN7QXgXCs69spyehTGGBWm8SQ3mq+YjvgCqPMDnv
         0+brjhejZcfAWjFJY65Ikd1dDVdOp6oj7PTJ7gGb4bLCeQoq/zYaRynZM2OXOGBNc8FF
         2nS3VnBcxL4GZ04v7yXV858789/S7qxKElhobTU53bLCFdO8xIyrjMezPWudcbIABa1e
         EGOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0E/MNKf+B4zP+oEc6IN16OAkbyQIHeKGlGeDn4fx6X0=;
        b=FqgE6hd75Ir/dU1I3GyW0QRvOIr+3yxtK4mM95uRDInwN9h5TM4dUz5gkYxC/cEizc
         jQNETFu/jhS1K5hQC0ZjiNLRp/+askIrbTGGcCqI1t2sZxr4/kY881JXi6ylFCLqU43T
         Y3yb93h1VS2t9CkwcDFchGfieif4mRizRIWvN6kcSainnWjHXiGjTCj2tJJvSKY+QtUv
         RepcJe+skDZYsLRL9HKNZZlQ7Xkaai1FgiJWm4HR0bCawFqy6OhELrpJa7d/894tnxMc
         bPicCGSluzp7uX8VRhJqU84ELbPfbsj53oqL4JoHy5DiRBW8/3UXY0YNeWshBhuBsDiD
         TahA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvR1XEemh8mhuJ3pE0BTS2ixym90VlvTpm79svBsDVHvoRmMOD
	Wg/2PD7Aa1HUIJLWoMIpZGo=
X-Google-Smtp-Source: APXvYqyRosxgD3yIwlDmOL5TOuOGG0Ke9Byo8bNeyb+EQHCc5FXdkwi6ts5/oyuoWSVtwG8ljlKx6A==
X-Received: by 2002:a25:c789:: with SMTP id w131mr28754063ybe.439.1579254582570;
        Fri, 17 Jan 2020 01:49:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7184:: with SMTP id m126ls700640ybc.12.gmail; Fri, 17
 Jan 2020 01:49:42 -0800 (PST)
X-Received: by 2002:a25:4d41:: with SMTP id a62mr13805500ybb.372.1579254582144;
        Fri, 17 Jan 2020 01:49:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579254582; cv=none;
        d=google.com; s=arc-20160816;
        b=ZTucvP4TZTk9rttzphnOAnOY0gR5S8y13iWgptp/D3Go3mdmZ9RGgNA/JG7jTaa14D
         bPXE2DihKvE3vwp3TmGi8uf+xCQ962BdRiR/EwMNVKBANsEArJ5d6frxHEad3cw+cR3+
         VDQCubVOSue8+2SE7y5eJta274ScObDsLDW1l8PvSxJjy0u3LuABkcd3+MklqkO7j1+0
         q5VSkpIILWk0ixlng5FCakflXdjvqtrobPo2h2RsGmmklfiBOsx1XfuRRVNrP3f2Qrie
         FZKfrqjxnoy9zASh3ejH/Qe1PNAnxu/XlwLk1xBmESoLIPAKx02gavn5icSfwN6pwf7r
         u50A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=sjKdwu+DwucGcMsswQdeCzutrL7eQH9MFved9sQdWvI=;
        b=NsSsI57KJxPq1+nJ+orwu3120P9MqeZ5jybsZ2DsGdbJhzxVKfVoU+yhzzuYKF+mGg
         6kZv5a6grA6JT6msUM9nrurS/m95CqOG9LWmgX+cJOLlSxU4V01PI2AuRf3NycGuPI6P
         paPBkJxIHyuUfl7nWFqocg7U6DxQ6LMLoagRzjskLjs7iTrtIzJ1jfEo/DMmtcYaX3yt
         EwqOcjc4BeYAmCAK7wMnW8qOFSXN/srk7Fn8Wz7aQ4d/zsbcoSAQVnUDKQrxgBLL/s4Q
         Hcheh1j6550A7GyMC3jyOuexqhh7INqvj29P48U3x5BYDAvOnkJkhgDUzqNnM0d1l3R6
         JM/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NFumepg3;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id p15si1105873ybl.5.2020.01.17.01.49.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 01:49:42 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-9uRYCMNpND6ehBV3R_wRdw-1; Fri, 17 Jan 2020 04:49:40 -0500
Received: by mail-lf1-f69.google.com with SMTP id f22so4258558lfh.4
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 01:49:40 -0800 (PST)
X-Received: by 2002:a2e:5357:: with SMTP id t23mr5182957ljd.227.1579254578783;
        Fri, 17 Jan 2020 01:49:38 -0800 (PST)
X-Received: by 2002:a2e:5357:: with SMTP id t23mr5182947ljd.227.1579254578524;
        Fri, 17 Jan 2020 01:49:38 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id r9sm13683623lfc.72.2020.01.17.01.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 01:49:37 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id C6AC21804D6; Fri, 17 Jan 2020 10:49:36 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v3 09/11] selftests: Remove tools/lib/bpf from include path
In-Reply-To: <CAEf4Bzba5FHN_iN52qRiGisRcauur1FqDY545EwE+RVR-nFvQA@mail.gmail.com>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918094179.1357254.14428494370073273452.stgit@toke.dk> <CAEf4Bzba5FHN_iN52qRiGisRcauur1FqDY545EwE+RVR-nFvQA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 17 Jan 2020 10:49:36 +0100
Message-ID: <87r1zyquof.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 9uRYCMNpND6ehBV3R_wRdw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NFumepg3;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:

> On Thu, Jan 16, 2020 at 5:28 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
>>
>> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>>
>> To make sure no new files are introduced that doesn't include the bpf/
>> prefix in its #include, remove tools/lib/bpf from the include path
>> entirely.
>>
>> Instead, we introduce a new header files directory under the scratch too=
ls/
>> dir, and add a rule to run the 'install_headers' rule from libbpf to hav=
e a
>> full set of consistent libbpf headers in $(OUTPUT)/tools/include/bpf, an=
d
>> then use $(OUTPUT)/tools/include as the include path for selftests.
>>
>> For consistency we also make sure we put all the scratch build files fro=
m
>> other bpftool and libbpf into tools/build/, so everything stays within
>> selftests/.
>>
>> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>> ---
>>  tools/testing/selftests/bpf/.gitignore |    1 +
>>  tools/testing/selftests/bpf/Makefile   |   50 +++++++++++++++++++------=
-------
>>  2 files changed, 31 insertions(+), 20 deletions(-)
>>
>> diff --git a/tools/testing/selftests/bpf/.gitignore b/tools/testing/self=
tests/bpf/.gitignore
>> index 1d14e3ab70be..849be9990ad2 100644
>> --- a/tools/testing/selftests/bpf/.gitignore
>> +++ b/tools/testing/selftests/bpf/.gitignore
>> @@ -40,3 +40,4 @@ test_cpp
>>  /bpf_gcc
>>  /tools
>>  bpf_helper_defs.h
>> +/include/bpf
>
> Isn't the real path (within selftests/bpf) a tools/include/bpf, which
> is already ignored through /tools rule?

Yeah, you're correct. I started out with having it in include/bpf, but
ended up moving it, and guess I forgot to remove the .gitignore. Will fix.

>> diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selfte=
sts/bpf/Makefile
>> index 1fd7da49bd56..c3fa695bb028 100644
>> --- a/tools/testing/selftests/bpf/Makefile
>> +++ b/tools/testing/selftests/bpf/Makefile
>> @@ -20,8 +20,8 @@ CLANG         ?=3D clang
>>  LLC            ?=3D llc
>>  LLVM_OBJCOPY   ?=3D llvm-objcopy
>>  BPF_GCC                ?=3D $(shell command -v bpf-gcc;)
>> -CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR) -I$(LIBDIR=
)  \
>> -         -I$(BPFDIR) -I$(GENDIR) -I$(TOOLSINCDIR)                      =
\
>> +CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR)           =
   \
>> +         -I$(INCLUDE_DIR) -I$(GENDIR) -I$(LIBDIR) -I$(TOOLSINCDIR)     =
\
>>           -Dbpf_prog_load=3Dbpf_prog_test_load                          =
  \
>>           -Dbpf_load_program=3Dbpf_test_load_program
>>  LDLIBS +=3D -lcap -lelf -lz -lrt -lpthread
>> @@ -97,11 +97,15 @@ OVERRIDE_TARGETS :=3D 1
>>  override define CLEAN
>>         $(call msg,CLEAN)
>>         $(RM) -r $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED) $(TEST_GEN=
_FILES) $(EXTRA_CLEAN)
>> -       $(MAKE) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/ clean
>>  endef
>>
>>  include ../lib.mk
>>
>> +SCRATCH_DIR :=3D $(OUTPUT)/tools
>> +BUILD_DIR :=3D $(SCRATCH_DIR)/build
>> +INCLUDE_DIR :=3D $(SCRATCH_DIR)/include
>> +INCLUDE_BPF :=3D $(INCLUDE_DIR)/bpf/bpf.h
>> +
>>  # Define simple and short `make test_progs`, `make test_sysctl`, etc ta=
rgets
>>  # to build individual tests.
>>  # NOTE: Semicolon at the end is critical to override lib.mk's default s=
tatic
>> @@ -120,7 +124,7 @@ $(OUTPUT)/urandom_read: urandom_read.c
>>         $(call msg,BINARY,,$@)
>>         $(CC) -o $@ $< -Wl,--build-id
>>
>> -$(OUTPUT)/test_stub.o: test_stub.c
>> +$(OUTPUT)/test_stub.o: test_stub.c $(INCLUDE_BPF)
>>         $(call msg,CC,,$@)
>>         $(CC) -c $(CFLAGS) -o $@ $<
>>
>> @@ -129,7 +133,7 @@ $(OUTPUT)/runqslower: force
>>         $(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower     =
      \
>>                     OUTPUT=3D$(CURDIR)/tools/ VMLINUX_BTF=3D$(abspath ..=
/../../../vmlinux)
>>
>> -BPFOBJ :=3D $(OUTPUT)/libbpf.a
>> +BPFOBJ :=3D $(BUILD_DIR)/libbpf/libbpf.a
>>
>>  $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED): $(OUTPUT)/test_stub.o $(B=
PFOBJ)
>>
>> @@ -155,17 +159,23 @@ force:
>>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/tools/sbin/bpftool
>>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
>>
>> -$(DEFAULT_BPFTOOL): force
>> -       $(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)                 =
      \
>> +$(BUILD_DIR)/libbpf $(BUILD_DIR)/bpftool $(INCLUDE_DIR):
>> +       $(call msg,MKDIR,,$@)
>> +       mkdir -p $@
>> +
>> +$(DEFAULT_BPFTOOL): force $(BUILD_DIR)/bpftool
>
> directories should be included as order-only dependencies (after | )

OK.

>> +       $(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)         \
>> +                   OUTPUT=3D$(BUILD_DIR)/bpftool/                      =
  \
>>                     prefix=3D DESTDIR=3D$(OUTPUT)/tools/ install
>>
>> -$(BPFOBJ): force
>> -       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/
>> +$(BPFOBJ): force $(BUILD_DIR)/libbpf
>
> same
>
>> +       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) \
>> +               OUTPUT=3D$(BUILD_DIR)/libbpf/
>>
>> -BPF_HELPERS :=3D $(OUTPUT)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*=
.h)
>> -$(OUTPUT)/bpf_helper_defs.h: $(BPFOBJ)
>> -       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR)                      =
      \
>> -                   OUTPUT=3D$(OUTPUT)/ $(OUTPUT)/bpf_helper_defs.h
>> +BPF_HELPERS :=3D $(wildcard $(BPFDIR)/bpf_*.h) $(INCLUDE_BPF)
>
> Shouldn't all BPF_HELPERS come from $(INCLUDE_DIR)/bpf now?
>
>> +$(INCLUDE_BPF): force $(BPFOBJ)
>
> And this can be more properly a $(BPF_HELPERS): force $(BPFOBJ)?
>
>> +       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) install_headers \
>> +               OUTPUT=3D$(BUILD_DIR)/libbpf/ DESTDIR=3D$(SCRATCH_DIR) p=
refix=3D
>>
>>  # Get Clang's default includes on this system, as opposed to those seen=
 by
>>  # '-target bpf'. This fixes "missing" files on some architectures/distr=
os,
>> @@ -185,8 +195,8 @@ MENDIAN=3D$(if $(IS_LITTLE_ENDIAN),-mlittle-endian,-=
mbig-endian)
>>
>>  CLANG_SYS_INCLUDES =3D $(call get_sys_includes,$(CLANG))
>>  BPF_CFLAGS =3D -g -D__TARGET_ARCH_$(SRCARCH) $(MENDIAN)                =
  \
>> -            -I$(OUTPUT) -I$(CURDIR) -I$(CURDIR)/include/uapi           =
\
>> -            -I$(APIDIR) -I$(LIBDIR) -I$(BPFDIR) -I$(abspath $(OUTPUT)/.=
./usr/include)
>> +            -I$(INCLUDE_DIR) -I$(CURDIR) -I$(CURDIR)/include/uapi      =
\
>> +            -I$(APIDIR) -I$(abspath $(OUTPUT)/../usr/include)
>>
>>  CLANG_CFLAGS =3D $(CLANG_SYS_INCLUDES) \
>>                -Wno-compare-distinct-pointer-types
>> @@ -306,7 +316,7 @@ $(TRUNNER_TEST_OBJS): $(TRUNNER_OUTPUT)/%.test.o:   =
                \
>>                       $(TRUNNER_EXTRA_HDRS)                             =
\
>>                       $(TRUNNER_BPF_OBJS)                               =
\
>>                       $(TRUNNER_BPF_SKELS)                              =
\
>> -                     $$(BPFOBJ) | $(TRUNNER_OUTPUT)
>> +                     $$(BPFOBJ) $$(INCLUDE_BPF) | $(TRUNNER_OUTPUT)
>
> singling out $(INCLUDE_BPF) looks weird? But I think $(BPFOBJ)
> achieves the same effect, so this change can be probably dropped? Same
> below.

I was having some trouble getting the dependency order right here.
$(INCLUDE_BPF) depends on $(BPFOBJ), not the other way around. May be
fixable though, I'll take another look.

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87r1zyquof.fsf%40toke.dk.
