# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/activestorage/all/activestorage.rbi
#
# activestorage-6.0.3

module ActiveStorage
  def analyzers; end
  def analyzers=(obj); end
  def binary_content_type; end
  def binary_content_type=(obj); end
  def content_types_allowed_inline; end
  def content_types_allowed_inline=(obj); end
  def content_types_to_serve_as_binary; end
  def content_types_to_serve_as_binary=(obj); end
  def logger; end
  def logger=(obj); end
  def paths; end
  def paths=(obj); end
  def previewers; end
  def previewers=(obj); end
  def queues; end
  def queues=(obj); end
  def replace_on_assign_to_many; end
  def replace_on_assign_to_many=(obj); end
  def routes_prefix; end
  def routes_prefix=(obj); end
  def self.analyzers; end
  def self.analyzers=(obj); end
  def self.binary_content_type; end
  def self.binary_content_type=(obj); end
  def self.content_types_allowed_inline; end
  def self.content_types_allowed_inline=(obj); end
  def self.content_types_to_serve_as_binary; end
  def self.content_types_to_serve_as_binary=(obj); end
  def self.gem_version; end
  def self.logger; end
  def self.logger=(obj); end
  def self.paths; end
  def self.paths=(obj); end
  def self.previewers; end
  def self.previewers=(obj); end
  def self.queues; end
  def self.queues=(obj); end
  def self.railtie_helpers_paths; end
  def self.railtie_namespace; end
  def self.railtie_routes_url_helpers(include_path_helpers = nil); end
  def self.replace_on_assign_to_many; end
  def self.replace_on_assign_to_many=(obj); end
  def self.routes_prefix; end
  def self.routes_prefix=(obj); end
  def self.service_urls_expire_in; end
  def self.service_urls_expire_in=(obj); end
  def self.table_name_prefix; end
  def self.use_relative_model_naming?; end
  def self.variable_content_types; end
  def self.variable_content_types=(obj); end
  def self.variant_processor; end
  def self.variant_processor=(obj); end
  def self.verifier; end
  def self.verifier=(obj); end
  def self.version; end
  def service_urls_expire_in; end
  def service_urls_expire_in=(obj); end
  def variable_content_types; end
  def variable_content_types=(obj); end
  def variant_processor; end
  def variant_processor=(obj); end
  def verifier; end
  def verifier=(obj); end
  extend ActiveSupport::Autoload
end
module ActiveStorage::VERSION
end
class ActiveStorage::Error < StandardError
end
class ActiveStorage::InvariableError < ActiveStorage::Error
end
class ActiveStorage::UnpreviewableError < ActiveStorage::Error
end
class ActiveStorage::UnrepresentableError < ActiveStorage::Error
end
class ActiveStorage::IntegrityError < ActiveStorage::Error
end
class ActiveStorage::FileNotFoundError < ActiveStorage::Error
end
module ActiveStorage::Transformers
  extend ActiveSupport::Autoload
end
class ActiveStorage::Previewer
  def blob; end
  def capture(*argv, to:); end
  def download_blob_to_tempfile(&block); end
  def draw(*argv); end
  def initialize(blob); end
  def instrument(operation, payload = nil, &block); end
  def logger; end
  def open_tempfile; end
  def preview; end
  def self.accept?(blob); end
  def tmpdir; end
end
class ActiveStorage::Previewer::PopplerPDFPreviewer < ActiveStorage::Previewer
  def draw_first_page_from(file, &block); end
  def preview; end
  def self.accept?(blob); end
  def self.pdftoppm_exists?; end
  def self.pdftoppm_path; end
end
class ActiveStorage::Previewer::MuPDFPreviewer < ActiveStorage::Previewer
  def draw_first_page_from(file, &block); end
  def preview; end
  def self.accept?(blob); end
  def self.mutool_exists?; end
  def self.mutool_path; end
end
class ActiveStorage::Previewer::VideoPreviewer < ActiveStorage::Previewer
  def draw_relevant_frame_from(file, &block); end
  def preview; end
  def self.accept?(blob); end
  def self.ffmpeg_exists?; end
  def self.ffmpeg_path; end
end
class ActiveStorage::Analyzer
  def blob; end
  def download_blob_to_tempfile(&block); end
  def initialize(blob); end
  def logger; end
  def metadata; end
  def self.accept?(blob); end
  def tmpdir; end
end
class ActiveStorage::Analyzer::ImageAnalyzer < ActiveStorage::Analyzer
  def metadata; end
  def read_image; end
  def rotated_image?(image); end
  def self.accept?(blob); end
end
class ActiveStorage::Analyzer::VideoAnalyzer < ActiveStorage::Analyzer
  def angle; end
  def computed_height; end
  def display_aspect_ratio; end
  def display_height_scale; end
  def duration; end
  def encoded_height; end
  def encoded_width; end
  def ffprobe_path; end
  def height; end
  def metadata; end
  def probe; end
  def probe_from(file); end
  def rotated?; end
  def self.accept?(blob); end
  def streams; end
  def tags; end
  def video_stream; end
  def width; end
end
module ActiveStorage::Reflection
end
class ActiveStorage::Reflection::HasOneAttachedReflection < ActiveRecord::Reflection::MacroReflection
  def macro; end
end
class ActiveStorage::Reflection::HasManyAttachedReflection < ActiveRecord::Reflection::MacroReflection
  def macro; end
end
module ActiveStorage::Reflection::ReflectionExtension
  def add_attachment_reflection(model, name, reflection); end
  def reflection_class_for(macro); end
end
module ActiveStorage::Reflection::ActiveRecordExtensions
  extend ActiveSupport::Concern
end
module ActiveStorage::Reflection::ActiveRecordExtensions::ClassMethods
  def reflect_on_all_attachments; end
  def reflect_on_attachment(attachment); end
end
class ActiveStorage::Engine < Rails::Engine
end
module Anonymous_Module_25
end
module Anonymous_Module_26
end
module ActiveStorage::Attached::Model
  def attachment_changes; end
  def changed_for_autosave?; end
  def reload(*arg0); end
  extend ActiveSupport::Concern
end
module ActiveStorage::Attached::Model::ClassMethods
  def has_many_attached(name, dependent: nil); end
  def has_one_attached(name, dependent: nil); end
end
class ActiveStorage::Attached::One < ActiveStorage::Attached
  def attach(attachable); end
  def attached?; end
  def attachment; end
  def blank?; end
  def detach; end
  def method_missing(method, *args, &block); end
  def purge; end
  def purge_later; end
  def respond_to_missing?(name, include_private = nil); end
  def write_attachment(attachment); end
end
class ActiveStorage::Attached::Many < ActiveStorage::Attached
  def attach(*attachables); end
  def attached?; end
  def attachments; end
  def blobs; end
  def detach; end
  def method_missing(method, *args, &block); end
  def respond_to_missing?(name, include_private = nil); end
end
module ActiveStorage::Attached::Changes
  extend ActiveSupport::Autoload
end
class ActiveStorage::Attached
  def change; end
  def initialize(name, record); end
  def name; end
  def record; end
end
module ActiveStorage::SetCurrent
  extend ActiveSupport::Concern
end
class ActiveStorage::BaseController < ActionController::Base
  def _layout(lookup_context, formats); end
  def self.__callbacks; end
  def self._helpers; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include ActionDispatch::Routing::UrlFor
  include ActiveStorage::SetCurrent
  include Anonymous_Module_27
end
module Anonymous_Module_27
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_25
  extend Anonymous_Module_26
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_25
  include Anonymous_Module_26
end
class ActiveStorage::DirectUploadsController < ActiveStorage::BaseController
  def _layout(lookup_context, formats); end
  def blob_args; end
  def create; end
  def direct_upload_json(blob); end
  def self._helpers; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_28
end
module Anonymous_Module_28
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_25
  extend Anonymous_Module_26
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_25
  include Anonymous_Module_26
end
module ActiveStorage::SetBlob
  def set_blob; end
  extend ActiveSupport::Concern
end
class ActiveStorage::BlobsController < ActiveStorage::BaseController
  def _layout(lookup_context, formats); end
  def self.__callbacks; end
  def self._helpers; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def show; end
  include ActionDispatch::Routing::UrlFor
  include ActiveStorage::SetBlob
  include Anonymous_Module_29
end
module Anonymous_Module_29
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_25
  extend Anonymous_Module_26
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_25
  include Anonymous_Module_26
end
class ActiveStorage::RepresentationsController < ActiveStorage::BaseController
  def _layout(lookup_context, formats); end
  def self.__callbacks; end
  def self._helpers; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def show; end
  include ActionDispatch::Routing::UrlFor
  include ActiveStorage::SetBlob
  include Anonymous_Module_30
end
module Anonymous_Module_30
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_25
  extend Anonymous_Module_26
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_25
  include Anonymous_Module_26
end
class ActiveStorage::DiskController < ActiveStorage::BaseController
  def _layout(lookup_context, formats); end
  def acceptable_content?(token); end
  def decode_verified_key; end
  def decode_verified_token; end
  def disk_service; end
  def self.__callbacks; end
  def self._helpers; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def serve_file(path, content_type:, disposition:); end
  def show; end
  def update; end
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_31
end
module Anonymous_Module_31
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_25
  extend Anonymous_Module_26
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_25
  include Anonymous_Module_26
end
class ActiveStorage::BaseJob < ActiveJob::Base
end
class ActiveStorage::AnalyzeJob < ActiveStorage::BaseJob
  def perform(blob); end
  def self.queue_name; end
  def self.rescue_handlers; end
end
class ActiveStorage::PurgeJob < ActiveStorage::BaseJob
  def perform(blob); end
  def self.queue_name; end
  def self.rescue_handlers; end
end
class ActiveStorage::Variant
  def blob; end
  def content_type(*args, &block); end
  def filename(*args, &block); end
  def format(*args, &block); end
  def image; end
  def initialize(blob, variation_or_variation_key); end
  def key; end
  def process; end
  def processed; end
  def processed?; end
  def service(*args, &block); end
  def service_url(expires_in: nil, disposition: nil); end
  def specification; end
  def transform(image, &block); end
  def upload(file); end
  def variation; end
end
class ActiveStorage::Variant::Specification < OpenStruct
end
class ActiveStorage::Downloader
  def download(key, file); end
  def initialize(service); end
  def open(key, checksum:, name: nil, tmpdir: nil); end
  def open_tempfile(name, tmpdir = nil); end
  def service; end
  def verify_integrity_of(file, checksum:); end
end
class ActiveStorage::Analyzer::NullAnalyzer < ActiveStorage::Analyzer
  def metadata; end
  def self.accept?(blob); end
end
module ActiveStorage::Blob::Analyzable
  def analyze; end
  def analyze_later; end
  def analyzed?; end
  def analyzer; end
  def analyzer_class; end
  def extract_metadata_via_analyzer; end
end
module ActiveStorage::Blob::Identifiable
  def download_identifiable_chunk; end
  def identified?; end
  def identify; end
  def identify_content_type; end
  def update_service_metadata; end
end
module ActiveStorage::Blob::Representable
  def preview(transformations); end
  def previewable?; end
  def representable?; end
  def representation(transformations); end
  def variable?; end
  def variant(transformations); end
  extend ActiveSupport::Concern
end
class ActiveStorage::LogSubscriber < ActiveSupport::LogSubscriber
end
class ActiveStorage::Service
  def content_disposition_with(filename:, type: nil); end
  def delete(key); end
  def delete_prefixed(prefix); end
  def download(key); end
  def download_chunk(key, range); end
  def exist?(key); end
  def headers_for_direct_upload(key, filename:, content_type:, content_length:, checksum:); end
  def instrument(operation, payload = nil, &block); end
  def open(*args, **options, &block); end
  def self.build(configurator:, service: nil, **service_config); end
  def self.configure(service_name, configurations); end
  def service_name; end
  def update_metadata(key, **metadata); end
  def upload(key, io, checksum: nil, **options); end
  def url(key, expires_in:, disposition:, filename:, content_type:); end
  def url_for_direct_upload(key, expires_in:, content_type:, content_length:, checksum:); end
  extend ActiveSupport::Autoload
end
class ActiveStorage::Service::Configurator
  def build(service_name); end
  def config_for(name); end
  def configurations; end
  def initialize(configurations); end
  def resolve(class_name); end
  def self.build(service_name, configurations); end
end
class ActiveStorage::Service::DiskService < ActiveStorage::Service
  def current_host; end
  def delete(key); end
  def delete_prefixed(prefix); end
  def download(key, &block); end
  def download_chunk(key, range); end
  def ensure_integrity_of(key, checksum); end
  def exist?(key); end
  def folder_for(key); end
  def headers_for_direct_upload(key, content_type:, **arg2); end
  def initialize(root:); end
  def make_path_for(key); end
  def path_for(key); end
  def root; end
  def stream(key); end
  def upload(key, io, checksum: nil, **arg3); end
  def url(key, expires_in:, filename:, disposition:, content_type:); end
  def url_for_direct_upload(key, expires_in:, content_type:, content_length:, checksum:); end
  def url_helpers; end
end
module ActiveStorage::Blob::GeneratedAttributeMethods
end
class ActiveStorage::Blob < ActiveRecord::Base
  def after_add_for_attachments; end
  def after_add_for_attachments=(val); end
  def after_add_for_attachments?; end
  def after_remove_for_attachments; end
  def after_remove_for_attachments=(val); end
  def after_remove_for_attachments?; end
  def allowed_inline?; end
  def attachable_plain_text_representation(caption = nil); end
  def audio?; end
  def autosave_associated_records_for_attachments(*args); end
  def autosave_associated_records_for_preview_image_attachment; end
  def autosave_associated_records_for_preview_image_blob; end
  def before_add_for_attachments; end
  def before_add_for_attachments=(val); end
  def before_add_for_attachments?; end
  def before_remove_for_attachments; end
  def before_remove_for_attachments=(val); end
  def before_remove_for_attachments?; end
  def compute_checksum_in_chunks(io); end
  def content_type_for_service_url; end
  def delete; end
  def download(&block); end
  def extract_content_type(io); end
  def filename; end
  def forced_disposition_for_service_url; end
  def forcibly_serve_as_binary?; end
  def image?; end
  def key; end
  def open(tmpdir: nil, &block); end
  def previewable_attachable?; end
  def purge; end
  def purge_later; end
  def regenerate_key; end
  def self.__callbacks; end
  def self._reflections; end
  def self._validators; end
  def self.after_add_for_attachments; end
  def self.after_add_for_attachments=(val); end
  def self.after_add_for_attachments?; end
  def self.after_remove_for_attachments; end
  def self.after_remove_for_attachments=(val); end
  def self.after_remove_for_attachments?; end
  def self.attachment_reflections; end
  def self.attribute_type_decorations; end
  def self.before_add_for_attachments; end
  def self.before_add_for_attachments=(val); end
  def self.before_add_for_attachments?; end
  def self.before_remove_for_attachments; end
  def self.before_remove_for_attachments=(val); end
  def self.before_remove_for_attachments?; end
  def self.build_after_unfurling(io:, filename:, content_type: nil, metadata: nil, identify: nil); end
  def self.build_after_upload(io:, filename:, content_type: nil, metadata: nil, identify: nil); end
  def self.create_after_unfurling!(io:, filename:, content_type: nil, metadata: nil, identify: nil, record: nil); end
  def self.create_after_upload!(io:, filename:, content_type: nil, metadata: nil, identify: nil, record: nil); end
  def self.create_and_upload!(io:, filename:, content_type: nil, metadata: nil, identify: nil, record: nil); end
  def self.create_before_direct_upload!(filename:, byte_size:, checksum:, content_type: nil, metadata: nil); end
  def self.defined_enums; end
  def self.find_signed(id); end
  def self.generate_unique_secure_token; end
  def self.service; end
  def self.service=(val); end
  def self.service?; end
  def self.unattached(*args); end
  def self.with_attached_preview_image(*args); end
  def service; end
  def service=(val); end
  def service?; end
  def service_headers_for_direct_upload; end
  def service_metadata; end
  def service_url(expires_in: nil, disposition: nil, filename: nil, **options); end
  def service_url_for_direct_upload(expires_in: nil); end
  def signed_id; end
  def text?; end
  def to_trix_content_attachment_partial_path; end
  def unfurl(io, identify: nil); end
  def upload(io, identify: nil); end
  def upload_without_unfurling(io); end
  def validate_associated_records_for_attachments(*args); end
  def video?; end
  extend ActionText::Attachable::ClassMethods
  include ActionText::Attachable
  include ActiveStorage::Blob::Analyzable
  include ActiveStorage::Blob::GeneratedAssociationMethods
  include ActiveStorage::Blob::GeneratedAttributeMethods
  include ActiveStorage::Blob::Identifiable
  include ActiveStorage::Blob::Representable
  include Anonymous_Module_32
end
module ActiveStorage::Blob::GeneratedAssociationMethods
  def attachment_ids; end
  def attachment_ids=(ids); end
  def attachments; end
  def attachments=(value); end
  def build_preview_image_attachment(*args, &block); end
  def create_preview_image_attachment!(*args, &block); end
  def create_preview_image_attachment(*args, &block); end
  def preview_image; end
  def preview_image=(attachable); end
  def preview_image_attachment; end
  def preview_image_attachment=(value); end
  def preview_image_blob; end
  def preview_image_blob=(value); end
  def reload_preview_image_attachment; end
  def reload_preview_image_blob; end
end
class ActiveStorage::Blob::ActiveRecord_Relation < ActiveRecord::Relation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Blob::GeneratedRelationMethods
end
module ActiveStorage::Blob::GeneratedRelationMethods
  def unattached(*args, &block); end
  def with_attached_preview_image(*args, &block); end
end
class ActiveStorage::Blob::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Blob::GeneratedRelationMethods
end
class ActiveStorage::Blob::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Blob::GeneratedRelationMethods
end
module Anonymous_Module_32
  def analyzed; end
  def analyzed=(value); end
  def analyzed_before_last_save; end
  def analyzed_change; end
  def analyzed_changed?; end
  def analyzed_was; end
  def identified; end
  def identified=(value); end
  def identified_before_last_save; end
  def identified_change; end
  def identified_changed?; end
  def identified_was; end
  def saved_change_to_analyzed; end
  def saved_change_to_analyzed?; end
  def saved_change_to_identified; end
  def saved_change_to_identified?; end
end
class ActiveStorage::Filename
  def <=>(other); end
  def as_json(*arg0); end
  def base; end
  def extension; end
  def extension_with_delimiter; end
  def extension_without_delimiter; end
  def initialize(filename); end
  def sanitized; end
  def self.wrap(filename); end
  def to_json; end
  def to_s; end
  include Comparable
end
class ActiveStorage::Variation
  def initialize(transformations); end
  def key; end
  def self.decode(key); end
  def self.encode(transformations); end
  def self.wrap(variator); end
  def transform(file, format: nil, &block); end
  def transformations; end
  def transformer; end
end
module ActiveStorage::Attachment::GeneratedAttributeMethods
end
class ActiveStorage::Attachment < ActiveRecord::Base
  def analyze_blob_later; end
  def autosave_associated_records_for_blob(*args); end
  def autosave_associated_records_for_record(*args); end
  def dependent; end
  def identify_blob; end
  def method_missing(method, *args, &block); end
  def purge; end
  def purge_dependent_blob_later; end
  def purge_later; end
  def respond_to_missing?(name, include_private = nil); end
  def self.__callbacks; end
  def self._reflections; end
  def self._validators; end
  def self.attribute_type_decorations; end
  def self.defined_enums; end
  include ActiveStorage::Attachment::GeneratedAssociationMethods
  include ActiveStorage::Attachment::GeneratedAttributeMethods
end
module ActiveStorage::Attachment::GeneratedAssociationMethods
  def blob; end
  def blob=(value); end
  def build_blob(*args, &block); end
  def create_blob!(*args, &block); end
  def create_blob(*args, &block); end
  def record; end
  def record=(value); end
  def reload_blob; end
  def reload_record; end
end
class ActiveStorage::Attachment::ActiveRecord_Relation < ActiveRecord::Relation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Attachment::GeneratedRelationMethods
end
module ActiveStorage::Attachment::GeneratedRelationMethods
end
class ActiveStorage::Attachment::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Attachment::GeneratedRelationMethods
end
class ActiveStorage::Attachment::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Attachment::GeneratedRelationMethods
end
class ActiveStorage::Current < ActiveSupport::CurrentAttributes
  def self.host; end
  def self.host=(attribute); end
  include Anonymous_Module_33
end
module Anonymous_Module_33
  def host; end
  def host=(attribute); end
end
class ActiveStorage::Preview
  def blob; end
  def image; end
  def initialize(blob, variation_or_variation_key); end
  def previewer; end
  def previewer_class; end
  def process; end
  def processed; end
  def processed?; end
  def service_url(**options); end
  def variant; end
  def variation; end
end
class ActiveStorage::Preview::UnprocessedError < StandardError
end
class ActiveStorage::Attached::Changes::CreateOne
  def attachable; end
  def attachment; end
  def blob; end
  def build_attachment; end
  def find_attachment; end
  def find_or_build_attachment; end
  def find_or_build_blob; end
  def initialize(name, record, attachable); end
  def name; end
  def record; end
  def save; end
  def upload; end
end
class ActiveStorage::Attached::Changes::CreateMany
  def assign_associated_attachments; end
  def attachables; end
  def attachments; end
  def blobs; end
  def build_subchange_from(attachable); end
  def initialize(name, record, attachables); end
  def name; end
  def record; end
  def reset_associated_blobs; end
  def save; end
  def subchanges; end
  def upload; end
end
class ActiveStorage::Attached::Changes::CreateOneOfMany < ActiveStorage::Attached::Changes::CreateOne
  def find_attachment; end
end
class ActiveStorage::Attached::Changes::DeleteOne
  def attachment; end
  def initialize(name, record); end
  def name; end
  def record; end
  def save; end
end
class ActiveStorage::Attached::Changes::DeleteMany
  def attachables; end
  def attachments; end
  def blobs; end
  def initialize(name, record); end
  def name; end
  def record; end
  def save; end
end
class ActiveStorage::Transformers::Transformer
  def initialize(transformations); end
  def process(file, format:); end
  def transform(file, format:); end
  def transformations; end
end
